import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // Import intl package

class AnnouncementDetails extends StatelessWidget {
  final String? email;
  final DateTime? timestamp;
  final bool isRead;

  const AnnouncementDetails({
    super.key,
    required this.email,
    required this.timestamp,
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    String formattedTimestamp = DateFormat('yyyy-MM-dd HH:mm').format(timestamp!);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'From: $email',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: isRead ? Colors.grey : Colors.black,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          'Time: $formattedTimestamp',
          style: TextStyle(
            fontSize: 12.0,
            fontStyle: FontStyle.italic,
            color: isRead ? Colors.grey : Colors.black,
          ),
        ),
      ],
    );
  }
}
