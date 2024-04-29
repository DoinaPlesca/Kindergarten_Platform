


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_colors.dart';
import '../widgets/settings/events_settings.dart';

class AddEventScreen extends StatelessWidget {
  final DateTime selectedDate;

  AddEventScreen({Key? key, required this.selectedDate}) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryContext = context;
    return AlertDialog(
      title: const Text('New Event'),
      content: SizedBox(
        width: MediaQuery.of(mediaQueryContext).size.width * 0.5,
        height: MediaQuery.of(mediaQueryContext).size.height * 0.4,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildTextField(
                controller: titleController,
                hint: 'Enter Title',
              ),
              const SizedBox(
                height: 20.0,
              ),
              buildTextField(
                controller: descpController,
                hint: 'Enter Description',
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
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
              // Create a new Event object
              Event newEvent = Event(
                eventTitle: title,
                eventDescription: description,
                eventDate: selectedDate,
              );

              // Return the new event to the calling widget
              Navigator.pop(context, newEvent);
            }
          },
          child: const Text('Add'),
        ),
      ],
    );
  }

  Widget buildTextField({String? hint, required TextEditingController controller}) {
    return TextField(
      controller: controller,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: hint ?? '',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.eggPlant, width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.eggPlant, width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
