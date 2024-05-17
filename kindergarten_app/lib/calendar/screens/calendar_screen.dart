import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kindergarten_app/calendar/models/calendar_model.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../app_colors.dart';
import '../bloc/calendar_bloc.dart';
import '../bloc/calendar_state.dart';
import '../models/calendar_events.dart';
import '../widgets/calendar/calendar_widget.dart';
import '../widgets/events/event_list_widget.dart';
import '../widgets/settings/events_settings.dart';
import 'add_event_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime _selectedDate;
  late DateTime _focusedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _focusedDate = _selectedDate;

    /// Fetch events for the current month
    _fetchEventsForMonth(_focusedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddEventScreen(_selectedDate),
        backgroundColor: AppColors.primary,
        child: const Icon(
          Icons.edit,
          color: AppColors.background,
        ),
      ),
      body: BlocBuilder<CalendarBloc, CalendarState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                CalendarWidget(
                  onDaySelected: _onDaySelected,
                  onMonthChanged: _onMonthChanged,
                  selectedDate: _selectedDate,
                  focusedDate: _focusedDate,
                ),
                EventListWidget(
                  events: _listOfDayEvents(state, _selectedDate),
                  onEventTapped: _showEventDetailsDialog,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

 ///Get the events for the given month
  void _fetchEventsForMonth(DateTime date) {
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    final lastDayOfMonth = DateTime(date.year, date.month + 1, 0);
    context.read<CalendarBloc>().getEventsByRangeDate(firstDayOfMonth, lastDayOfMonth);
  }

  /// Navigate to Add Events Screen and handles the new event creation.
  void _navigateToAddEventScreen(DateTime selectedDate) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddEventScreen(selectedDate: selectedDate)),
    );
    if (result != null && result is Event) {
      context.read<CalendarBloc>().add(ClientWantsToCreateNewCalendarEvent(
        eventType: ClientWantsToCreateNewCalendarEvent.eventName,
        eventdate: result.eventDate,
        eventdescription: result.eventDescription,
        eventtitle: result.eventTitle,
      ));
    }
  }

  /// Lists the events for the selected day
  List<Event> _listOfDayEvents(CalendarState state, DateTime selectedDate) {
    final eventsGroupedByDate = state.eventsGroupedByDate ?? {};
    final dayEvents = eventsGroupedByDate[DateTime(selectedDate.year, selectedDate.month, selectedDate.day)] ?? [];
    return dayEvents.map((event) => event.toEvent()).toList();
  }

  /// Handles the day selection in the calendar
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDate, selectedDay)) {
      setState(() {
        _selectedDate = selectedDay;
        _focusedDate = focusedDay; /// Update the focused date
      });
    }
  }

  ///Handles the month change in the calendar
  void _onMonthChanged(DateTime date) {
    setState(() {
      _focusedDate = date;
    });
    _fetchEventsForMonth(date); ///  fetch events for the new month
  }

  /// call  the __buildEventDetailsDialog to construct Alert Dialog
  void _showEventDetailsDialog(Event event) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _buildEventDetailsDialog(context, event);
      },
    );
  }


  AlertDialog _buildEventDetailsDialog(BuildContext context, Event event) {
    final DateFormat formatter = DateFormat.yMMMMd('en_US');
    return AlertDialog(
      title: _buildDialogTitle(event),
      content: _buildDialogContent(event, formatter),
      actions: _buildDialogActions(context),
    );
  }

  Widget _buildDialogTitle(Event event) {
    return Text(
      event.eventTitle,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildDialogContent(Event event, DateFormat formatter) {
    return SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          _buildDescriptionText(event),
          const SizedBox(height: 10),
          _buildDateText(event, formatter),
        ],
      ),
    );
  }

  Widget _buildDescriptionText(Event event) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Description: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text: event.eventDescription,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildDateText(Event event, DateFormat formatter) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Date: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          TextSpan(
            text: formatter.format(event.eventDate),
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDialogActions(BuildContext context) {
    return [
      TextButton(
        child: const Text(
          'Close',
          style: TextStyle(fontSize: 18),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ];
  }
}
