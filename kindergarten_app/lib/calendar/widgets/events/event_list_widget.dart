import 'package:flutter/material.dart';

import '../settings/events_settings.dart';
import 'event_list_tile.dart';


/// A widget to display a list of events with tap functionality
class EventListWidget extends StatelessWidget {
  final List<Event> events;
  final Function(Event) onEventTapped;

  const EventListWidget({
    required this.events,
    required this.onEventTapped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: events.map((event) {
        return GestureDetector(
          onTap: () => onEventTapped(event),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: EventListTile(event: event),
          ),
        );
      }).toList(),
    );
  }
}
