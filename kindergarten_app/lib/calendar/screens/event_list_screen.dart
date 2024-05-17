import 'package:flutter/material.dart';
import '../../app_colors.dart';
import '../widgets/events/event_list_widget.dart';
import '../widgets/settings/events_settings.dart';


class EventListScreen extends StatelessWidget {
  final List<Event> events;
  final Function(Event) onEventTapped;

  const EventListScreen({
    required this.events,
    required this.onEventTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event List'),
        backgroundColor: AppColors.primary,
      ),
      body: EventListWidget(
        events: events,
        onEventTapped: onEventTapped,
      ),
    );
  }
}
