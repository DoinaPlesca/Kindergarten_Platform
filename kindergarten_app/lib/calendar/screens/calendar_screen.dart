import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../app_colors.dart';
import '../widgets/calendar/calendar_widget.dart';
import '../widgets/settings/detail_settings.dart';
import '../widgets/settings/events_settings.dart';
import 'add_event_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime _selectedDate;
  late List<Event> _events;
  late Map<DateTime, List<Event>> _mySelectedEvents;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _events = [];
    _mySelectedEvents = {};
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Calendar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddEventScreen(_selectedDate),
        backgroundColor: AppColors.babyPowder,
        child: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CalendarWidget(
              onDaySelected: _onDaySelected,
              selectedDate: _selectedDate,
            ),
            EventListWidget(
              events: _listOfDayEvents(_selectedDate),
              onEventTapped: _navigateToEventDetails,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToAddEventScreen(DateTime selectedDate) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddEventScreen(selectedDate: selectedDate)),
    );
    if (result != null && result is Event) {
      setState(() {
        final selectedDateEvents = _mySelectedEvents[selectedDate] ?? [];
        selectedDateEvents.add(result);
        _mySelectedEvents[selectedDate] = selectedDateEvents;
      });
    }
  }

  List<Event> _listOfDayEvents(DateTime selectedDate) {
    return _mySelectedEvents[selectedDate] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDate, selectedDay)) {
      setState(() {
        _selectedDate = selectedDay;
      });
    }
  }

  void _navigateToEventDetails(Event event) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(
          eventTitle: event.eventTitle,
          eventDescp: event.eventDescription,
          eventDate: _selectedDate,
        ),
      ),
    );
  }
}

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
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: AppColors.eggPlant, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              leading: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
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
      }).toList(),
    );
  }
}



























