import 'package:flutter/material.dart';

class AnnouncementInputField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPost;

  const AnnouncementInputField({super.key,
    required this.controller,
    required this.onPost,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Enter your announcement',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              ),
              minLines: 1,
              maxLines: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a message';
                }
                return null;
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: onPost,
          ),
        ],
      ),
    );
  }
}
