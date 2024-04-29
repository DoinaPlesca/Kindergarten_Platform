import 'package:flutter/material.dart';
import '../../../app_colors.dart';
import '../settings/events_settings.dart';


class EventListWidget extends StatelessWidget {
  final List<Event> events;

  const EventListWidget({
    required this.events,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: AppColors.eggPlant, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.eggPlant,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.done,
                  color: AppColors.babyPowder,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.eggPlant,
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  event.eventTitle,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(event.eventDescription),
            ),
          ),
        );
      },
    );
  }
}
