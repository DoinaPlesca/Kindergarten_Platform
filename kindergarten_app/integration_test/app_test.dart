import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';
import 'package:kindergarten_app/announcement/widgets/announcement_card.dart';
import 'package:kindergarten_app/announcement/widgets/announcement_input_field.dart';
import 'package:kindergarten_app/app_colors.dart';
import 'package:kindergarten_app/authentication/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_app/calendar/widgets/events/add_events_widget.dart';
import 'package:kindergarten_app/calendar/widgets/events/event_list_tile.dart';
import 'package:kindergarten_app/calendar/widgets/settings/events_settings.dart';
import 'package:kindergarten_app/children/widgets/children_widget.dart';
import 'package:kindergarten_app/gallery_photo/models/photo_model.dart';
import 'package:kindergarten_app/gallery_photo/widgets/photo_grid_widget.dart';

/// flutter test integration_test/app_test.dart

void main() {
  /// LOGIN ///

  testWidgets('LoginForm displays correctly and performs login', (
      WidgetTester tester) async {
    // Mock FUNCTIA PENTRU A SIMULA ONLOGIN CALL
    String? capturedUsername;
    String? capturedPassword;
    void mockOnLogin(String username, String password) {
      capturedUsername = username;
      capturedPassword = password;
    }

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LoginForm(onLogin: mockOnLogin),
        ),
      ),
    );

    // verifica daca Ui display corect
    expect(find.text('Authentication'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    await tester.enterText(find.byType(TextFormField).at(0), 'testuser');
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');

    await tester.tap(find.text('Login'));
    await tester.pump();

    expect(capturedUsername, 'testuser');
    expect(capturedPassword, 'password123');
  });


  testWidgets('LoginForm shows validation errors if fields are empty', (
      WidgetTester tester) async {
    void mockOnLogin(String username, String password) {}

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LoginForm(onLogin: mockOnLogin),
        ),
      ),
    );

    await tester.tap(find.text('Login'));
    await tester.pump();

    expect(find.text('Username cannot be empty'), findsOneWidget);
    expect(find.text('The password is required for authentication'),
        findsOneWidget);
  });


/// CHILDREN WIDGETS ///

  testWidgets('ChildCard displays child information correctly', (WidgetTester tester) async {
    final child = {
      'firstname': 'Diana',
      'lastname': 'Mikkelsen',
      'image': 'https://via.placeholder.com/150'
    };

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ChildCard(child: child),
        ),
      ),
    );

    final imageFinder = find.byType(AspectRatio);
    expect(imageFinder, findsOneWidget);

    expect(find.text('Diana Mikkelsen'), findsOneWidget);

    final nameText = tester.widget<Text>(find.text('Diana Mikkelsen'));
    expect(nameText.style?.fontSize, 20.0);
    expect(nameText.style?.fontWeight, FontWeight.bold);
    expect(nameText.style?.color, AppColors.accentYellow);
  });
  
/// GALLERY WIDGET ///

  testWidgets('PhotoGridWidget displays photos and descriptions correctly', (WidgetTester tester) async {

    final List<Gallery> photos = [
      const Gallery(photourl: 'data:image/png;base64,validBase64Image', description: 'Photo 1', photoid: 1),
      const Gallery(photourl: 'data:image/png;base64,invalidBase64Image', description: 'Photo 2', photoid: 2),
      const Gallery(photourl: 'unsupportedImageUrl', description: 'Photo 3', photoid: 3),
    ];

    final List<Uint8List?> photoData = [
      Uint8List.fromList([137, 80, 78, 71, 13, 10, 26, 10]), //  valid PNG header
      null, // invalid base64 image
    ];

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PhotoGridWidget(photos: photos, photoData: photoData),
        ),
      ),
    );

    //verifica ca widgetul sa arate corect imaginile
    expect(find.text('Photo 1'), findsOneWidget);
    expect(find.text('Photo 2'), findsOneWidget);
    expect(find.text('Photo 3'), findsOneWidget);

    expect(find.byType(Image), findsOneWidget); // numai imaginile valide trebuie sa fie aratate
    expect(find.text('Invalid base64 image'), findsOneWidget); // invalida base64 image
    expect(find.text('Unsupported image type'), findsOneWidget); //
  });

/// ANNOUNCEMENTS ///

  testWidgets('AnnouncementCard displays correctly when selected', (
      WidgetTester tester) async {
    final announcement = AnnouncementWithSenderEmail(
      email: 'test@example.com',
      timestamp: DateTime.now(),
      content: 'This is a test announcement.',
      isread: false,
      id: 2,
      sender: 1,

    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnnouncementCard(
            announcement: announcement,
            isSelected: true,
            onTap: () {},
          ),
        ),
      ),
    );

    // verifica ui daca arata corect "state" selectat
    final Card card = tester.widget(find.byType(Card));
    expect(card.color, AppColors.accentYellow);
  });


  testWidgets(
      'AnnouncementCard onTap callback is called', (WidgetTester tester) async {
    final announcement = AnnouncementWithSenderEmail(
        email: 'test@example.com',
        timestamp: DateTime.now(),
        content: 'This is a test announcement.',
        isread: false,
        id: 1,
        sender: 1
    );

    bool wasTapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnnouncementCard(
            announcement: announcement,
            isSelected: false,
            onTap: () {
              wasTapped = true;
            },
          ),
        ),
      ),
    );

    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    expect(wasTapped, isTrue);
  });

  testWidgets('AnnouncementInputField displays correctly and posts message', (
      WidgetTester tester) async {
    final controller = TextEditingController();
    bool wasPosted = false;

    // mock functia pentru a simula on call back
    void mockOnPost() {
      wasPosted = true;
    }

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnnouncementInputField(
            controller: controller,
            onPost: mockOnPost,
          ),
        ),
      ),
    );
    //verifica daca este aratat corect
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);
    expect(find.text('Enter your announcement'), findsOneWidget);

    await tester.enterText(find.byType(TextFormField), 'Test Announcement');
    expect(controller.text, 'Test Announcement');

    await tester.tap(find.byType(IconButton));
    await tester.pump();
    expect(wasPosted, isTrue);
  });

/// CALENDAR EVENTS///

  testWidgets('AddEventsWidget displays correctly with hint', (
      WidgetTester tester) async {
    final controller = TextEditingController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AddEventsWidget(
            hint: 'Enter event',
            controller: controller,
          ),
        ),
      ),
    );

    expect(find.text('Enter event'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'My Event');
    expect(controller.text, 'My Event');
  });


  testWidgets('AddEventsWidget displays correctly without hint', (
      WidgetTester tester) async {
    final controller = TextEditingController();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AddEventsWidget(
            controller: controller,
          ),
        ),
      ),
    );

    expect(find.byType(TextField), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'My Event');
    expect(controller.text, 'My Event');
  });

  testWidgets('AddEventsWidget updates the controller text', (
      WidgetTester tester) async {
    final controller = TextEditingController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AddEventsWidget(
            hint: 'Enter event',
            controller: controller,
          ),
        ),
      ),
    );

    await tester.enterText(find.byType(TextField), 'New Event');
    expect(controller.text, 'New Event');
  });


  testWidgets('EventListTile displays correctly', (WidgetTester tester) async {
    final event = Event(
      eventTitle: 'Sample Event',
      eventDescription: 'This is a sample event description.',
      eventDate: DateTime.now(),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EventListTile(event: event),
        ),
      ),
    );
    expect(find.text('Sample Event'), findsOneWidget);
    expect(find.text('This is a sample event description.'), findsOneWidget);
    expect(find.byIcon(Icons.done), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward_ios), findsOneWidget);
  });


  testWidgets('EventListTile has correct leading and trailing icons', (
      WidgetTester tester) async {
    final event = Event(
      eventTitle: 'Sample Event',
      eventDescription: 'This is a sample event description.',
      eventDate: DateTime.now(),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EventListTile(event: event),
        ),
      ),
    );
    expect(find.byIcon(Icons.done), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward_ios), findsOneWidget);
  });


}