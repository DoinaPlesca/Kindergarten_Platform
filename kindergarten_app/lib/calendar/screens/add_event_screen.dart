import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../app_colors.dart';
import '../widgets/events/add_events_widget.dart';
import '../widgets/settings/events_settings.dart';

/// A screen to add a new event

class AddEventScreen extends StatelessWidget {
  final DateTime selectedDate;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descpController = TextEditingController();

  AddEventScreen({Key? key, required this.selectedDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('New Event'),
      content: _buildContent(context),
      actions: _buildActions(context),
    );
  }

  ///Creates the content of the dialog including the text fields

  Widget _buildContent(BuildContext context) {
    final mediaQueryContext = context;
    return SizedBox(
      width: MediaQuery.of(mediaQueryContext).size.width * 0.5,
      height: MediaQuery.of(mediaQueryContext).size.height * 0.4,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            AddEventsWidget(
              controller: titleController,
              hint: 'Enter Title',
            ),
            const SizedBox(height: 20.0),
            AddEventsWidget(
              controller: descpController,
              hint: 'Enter Description',
            ),
          ],
        ),
      ),
    );
  }

  /// Creates the action buttons for the dialog

  List<Widget> _buildActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () => Navigator.pop(context),
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
        ),
        child: const Text('Cancel'),
      ),
      TextButton(
        onPressed: () => _addEvent(context),
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
        ),
        child: const Text('Add'),
      ),
    ];
  }

  /// Handles the creation of a new event and the navigation back with the new event data.

  void _addEvent(BuildContext context) {
    String title = titleController.text;
    String description = descpController.text;
    if (title.isEmpty || description.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter title & description'),
          duration: Duration(seconds: 3),
        ),
      );
    } else {
      /// Create a new Event object
      Event newEvent = Event(
        eventTitle: title,
        eventDescription: description,
        eventDate: selectedDate,
      );
      ///Return the new event to the calling widget
      Navigator.pop(context, newEvent);
    }
  }
}
