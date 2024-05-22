import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kindergarten_app/calendar/widgets/calendar/calendar_day.dart';
import 'package:kindergarten_app/main.dart';


void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Test for CalendarDay Widget', (tester) async {

    await tester.pumpWidget(const MyApp());

    final DateTime testDay = DateTime(2024, 5, 25);

    await tester.pumpWidget(MaterialApp(
      home: CalendarDay(
        day: testDay,
        isToday: false,
        isSelected: true,
        eventCount: 2,
      ),
    ));

    await tester.pump();

    expect(find.text('25'), findsOneWidget);
    expect(find.byType(Container), findsWidgets);
  });
}
