import 'package:flutter/material.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';
import '../widgets/announcement_card.dart';


class AnnouncementsList extends StatelessWidget {
  final List<AnnouncementWithSenderEmail> announcementsList;
  final int selectedNotificationIndex;
  final Function(BuildContext, AnnouncementWithSenderEmail) onAnnouncementTap;

  const AnnouncementsList({
    required this.announcementsList,
    required this.selectedNotificationIndex,
    required this.onAnnouncementTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcementsList.length,
      itemBuilder: (context, index) {
        final announcement = announcementsList[index];
        return AnnouncementCard(
          announcement: announcement,
          isSelected: selectedNotificationIndex == index,
          onTap: () => onAnnouncementTap(context, announcement),
        );
      },
    );
  }
}
