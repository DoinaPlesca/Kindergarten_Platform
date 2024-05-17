import 'package:flutter/material.dart';
import '../../../app_colors.dart';

class CalendarDay extends StatelessWidget {
  final DateTime day;
  final bool isToday;
  final bool isSelected;
  final int eventCount;

  const CalendarDay({
    required this.day,
    required this.isToday,
    required this.isSelected,
    required this.eventCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDayContainer(),
        if (eventCount > 0) _buildEventIndicators(),
      ],
    );
  }

  Widget _buildDayContainer() {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.secondary : isToday ? AppColors.accentGreen : null,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          day.day.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : isToday ? Colors.black : null,
          ),
        ),
      ),
    );
  }

  Widget _buildEventIndicators() {
    return Container(
      margin: const EdgeInsets.only(top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(eventCount, (index) {
          return Container(
            width: 5,
            height: 5,
            margin: const EdgeInsets.symmetric(horizontal: 1),
            decoration: const BoxDecoration(
              color: AppColors.accentRed,
              shape: BoxShape.circle,
            ),
          );
        }),
      ),
    );
  }
}
