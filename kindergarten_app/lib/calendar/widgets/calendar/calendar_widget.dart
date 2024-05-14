import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../app_colors.dart';
import '../settings/calendar_settings.dart';

class CalendarWidget extends StatefulWidget {
  final Function(DateTime, DateTime) onDaySelected;
  final DateTime selectedDate;

  const CalendarWidget({
    required this.onDaySelected,
    required this.selectedDate,
    Key? key,
  }) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _focusedDay = widget.selectedDate; 
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: AppColors.black,
          width: 2.0,
        ),
      ),
      child: TableCalendar(
        calendarFormat: CalendarSettings.calendarFormat,
        focusedDay: _focusedDay,
        firstDay: CalendarSettings.initialCalendarDate,
        lastDay: CalendarSettings.lastCalendarDate,
        onDaySelected: _onDaySelected,
        selectedDayPredicate: (day) => isSameDay(day, widget.selectedDate),
      ),
    );
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;
    });
    widget.onDaySelected(day, focusedDay);
  }
}




