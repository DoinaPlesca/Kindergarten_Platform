import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../app_colors.dart';
import '../../bloc/calendar_bloc.dart';
import '../../bloc/calendar_state.dart';
import '../../models/calendar_model.dart';
import '../settings/calendar_settings.dart';
import 'calendar_day.dart';

class CalendarCard extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime selectedDate;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(DateTime) onMonthChanged;

  const CalendarCard({
    required this.focusedDay,
    required this.selectedDate,
    required this.onDaySelected,
    required this.onMonthChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        final eventsGroupedByDate = state.eventsGroupedByDate ?? {};
        return _buildCalendarCard(context, eventsGroupedByDate);
      },
    );
  }

  Widget _buildCalendarCard(BuildContext context, Map<DateTime, List<InsertEventResult>> eventsGroupedByDate) {
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
      child: _buildTableCalendar(eventsGroupedByDate),
    );
  }

  Widget _buildTableCalendar(Map<DateTime, List<InsertEventResult>> eventsGroupedByDate) {
    return TableCalendar(
      calendarFormat: CalendarSettings.calendarFormat,
      focusedDay: focusedDay,
      firstDay: CalendarSettings.initialCalendarDate,
      lastDay: CalendarSettings.lastCalendarDate,
      onDaySelected: (selectedDay, focusedDay) {
        onDaySelected(selectedDay, focusedDay);
      },
      onPageChanged: (focusedDay) {
        onMonthChanged(focusedDay);
      },
      selectedDayPredicate: (day) => isSameDay(day, selectedDate),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          return _buildCalendarDay(day, false, false, eventsGroupedByDate);
        },
        todayBuilder: (context, day, focusedDay) {
          return _buildCalendarDay(day, true, false, eventsGroupedByDate);
        },
        selectedBuilder: (context, day, focusedDay) {
          return _buildCalendarDay(day, false, true, eventsGroupedByDate);
        },
      ),
    );
  }

  Widget _buildCalendarDay(DateTime day, bool isToday, bool isSelected, Map<DateTime, List<InsertEventResult>> eventsGroupedByDate) {
    final eventCount = eventsGroupedByDate[DateTime(day.year, day.month, day.day)]?.length ?? 0;

    return CalendarDay(
      day: day,
      isToday: isToday,
      isSelected: isSelected,
      eventCount: eventCount,
    );
  }
}
