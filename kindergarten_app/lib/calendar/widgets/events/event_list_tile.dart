import 'package:flutter/material.dart';
import '../../../app_colors.dart';
import '../settings/events_settings.dart';

/// A widget to display an individual event tile

class EventListTile extends StatelessWidget {
  final Event event;

  const EventListTile({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.primary, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      leading: _buildLeadingIcon(),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppColors.primary,
      ),
      title: _buildTitle(),
      subtitle: _buildSubtitle(),
    );
  }


  Widget _buildLeadingIcon() {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: AppColors.secondary, // Icon background color
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.done,
        color: AppColors.surface, // Icon color
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        event.eventTitle,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.text,
        ),
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      event.eventDescription,
      style: const TextStyle(color: AppColors.text),
    );
  }
}
