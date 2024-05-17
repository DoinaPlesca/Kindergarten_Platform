import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/calendar_model.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default([]) List<InsertEventResult> eventsByDataRange,
    @Default([]) List<InsertEventResult> events,
    required bool showNotificationDot,
    @Default({}) Map<DateTime, List<InsertEventResult>> eventsGroupedByDate,
  }) = _CalendarState;

  factory CalendarState.empty() => const CalendarState(
    eventsByDataRange: [],
    events: [],
    showNotificationDot: false,
    eventsGroupedByDate: {},
  );
}
