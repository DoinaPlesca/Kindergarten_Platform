import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';
import 'package:kindergarten_app/announcement/widgets/announcement_details.dart';
import '../../app_colors.dart';

import 'announcemnt_icon.dart';

/// A widget to display an announcement card

class AnnouncementCard extends StatelessWidget {
  final AnnouncementWithSenderEmail announcement;
  final bool isSelected;
  final VoidCallback onTap;

  const AnnouncementCard({
    super.key,
    required this.announcement,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 2,
          color: _getCardColor(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    AnnouncementIcon(isRead: announcement.isread),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: AnnouncementDetails(
                        email: announcement.email,
                        timestamp: announcement.timestamp,
                        isRead: announcement.isread,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                Text(
                  announcement.content ?? 'No content',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: announcement.isread ? Colors.grey : AppColors.text,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getCardColor() {
    if (announcement.isread) {
      return Colors.grey[100]!;
    } else if (isSelected) {
      return AppColors.accentYellow;
    } else {
      return AppColors.secondary.withOpacity(0.1);
    }
  }
}
