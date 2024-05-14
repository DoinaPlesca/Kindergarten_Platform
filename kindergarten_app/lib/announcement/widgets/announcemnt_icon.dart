import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnnouncementIcon extends StatelessWidget {
  final bool isRead;

  const AnnouncementIcon({super.key, required this.isRead});

  @override
  Widget build(BuildContext context) {
    return Icon(
      isRead ? Icons.mark_email_read : Icons.mark_email_unread,
      color: isRead ? Colors.grey : Colors.blueAccent,
    );
  }
}
