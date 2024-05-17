import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_app/calendar/models/calendar_model.dart';
import '../../events_base.dart';


part 'calendar_events.freezed.dart';
part 'calendar_events.g.dart';


class CalendarServerEvents extends BaseEvent {
  static Object fromJson(Map<String, dynamic> json) {
    final type = json['eventType'];
    switch (type) {
      case ServerCreateCalendarEvent.eventName:
        return ServerCreateCalendarEvent.fromJson(json);
      case ServerGetEventsByDateRange.eventName:
        return ServerGetEventsByDateRange.fromJson(json);
      default:
        throw "Unknown event type: $type in $json";
    }
  }
}

// CLIENT EVENTS
@freezed
class ClientWantsToCreateNewCalendarEvent extends ClientEvent
    with _$ClientWantsToCreateNewCalendarEvent {
  static const String eventName = "ClientWantsToCreateNewCalendarEvent";
  const factory ClientWantsToCreateNewCalendarEvent({
    required String eventType,
    required DateTime eventdate,
    required String eventdescription,
    required String eventtitle,
  }) = _ClientWantsToCreateNewCalendarEvent;

  factory ClientWantsToCreateNewCalendarEvent.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToCreateNewCalendarEventFromJson(json);
}

@freezed
class ClientWantsToGetEventsByDateRange extends ClientEvent
    with _$ClientWantsToGetEventsByDateRange {
  static const String eventName = "ClientWantsToGetEventsByDateRange";
  const factory ClientWantsToGetEventsByDateRange({
    required String eventType,
    required DateTime StartDate,
    required DateTime EndDate,
  }) = _ClientWantsToGetEventsByDateRange;

  factory ClientWantsToGetEventsByDateRange.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToGetEventsByDateRangeFromJson(json);
}

// SERVER EVENTS
@freezed
class ServerCreateCalendarEvent extends ServerEvent
    with _$ServerCreateCalendarEvent {
  static const String eventName = "ServerCreateCalendarEvent";
  const factory ServerCreateCalendarEvent({
    required String eventType,
    required InsertEventResult newEvent,
  }) = _ServerCreateCalendarEvent;

  factory ServerCreateCalendarEvent.fromJson(Map<String, dynamic> json) =>
      _$ServerCreateCalendarEventFromJson(json);
}

@freezed
class ServerGetEventsByDateRange extends ServerEvent
    with _$ServerGetEventsByDateRange {
  static const String eventName = "ServerGetEventsByDateRange";
  const factory ServerGetEventsByDateRange({
    required String eventType,
    @Default([]) List<InsertEventResult> eventsByDataRange,
  }) = _ServerGetEventsByDateRange;

  factory ServerGetEventsByDateRange.fromJson(Map<String, dynamic> json) =>
      _$ServerGetEventsByDateRangeFromJson(json);
}
