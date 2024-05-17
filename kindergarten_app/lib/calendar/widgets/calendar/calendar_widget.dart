import 'package:flutter/material.dart';
import 'calendar_card.dart';

class CalendarWidget extends StatefulWidget {
  final Function(DateTime, DateTime) onDaySelected;
  final Function(DateTime) onMonthChanged;
  final DateTime selectedDate;
  final DateTime focusedDate;

  const CalendarWidget({
    required this.onDaySelected,
    required this.onMonthChanged,
    required this.selectedDate,
    required this.focusedDate,
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
    _focusedDay = widget.focusedDate;
  }

  @override
  Widget build(BuildContext context) {
    return CalendarCard(
      focusedDay: _focusedDay,
      selectedDate: widget.selectedDate,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
        widget.onDaySelected(selectedDay, focusedDay);
      },
      onMonthChanged: (focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
        widget.onMonthChanged(focusedDay);
      },
    );
  }
}
