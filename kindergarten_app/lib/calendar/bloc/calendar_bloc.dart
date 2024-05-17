
import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../broadcast_ws_channel.dart';
import '../../events_base.dart';
import '../models/calendar_events.dart';
import '../models/calendar_model.dart';
import 'calendar_state.dart';

class CalendarBloc extends Bloc<BaseEvent, CalendarState> {
  final BroadcastWsChannel _channel;
  late StreamSubscription _channelSubscription;

  CalendarBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(CalendarState.empty()) {
    _initChannel();
    on<ClientEvent>(_onClientEvent);
    on<ServerCreateCalendarEvent>(_onServerCreateCalendarEvent);
    on<ServerGetEventsByDateRange>(_onServerGetEventsByDateRange);
  }

  void _initChannel() {
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .where((event) =>
    event['eventType'] == ServerCreateCalendarEvent.eventName ||
        event['eventType'] == ServerGetEventsByDateRange.eventName)
        .map((event) => CalendarServerEvents.fromJson(event))
        .listen(
          (event) => add(event as BaseEvent),
      onError: addError,
    );
  }

  @override
  Future<void> close() async {
    await _channelSubscription.cancel();
    _channel.sink.close();
    return super.close();
  }

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<CalendarState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  void getEventsByRangeDate(DateTime startDate, DateTime endDate) {
    add(ClientWantsToGetEventsByDateRange(
      eventType: ClientWantsToGetEventsByDateRange.eventName,
      StartDate: startDate,
      EndDate: endDate,
    ));
  }

  FutureOr<void> _onServerCreateCalendarEvent(ServerCreateCalendarEvent event, Emitter<CalendarState> emit) {
    final updatedEvents = [event.newEvent, ...state.events];
    final updatedEventsGroupedByDate = Map<DateTime, List<InsertEventResult>>.from(state.eventsGroupedByDate);

    final eventDate = DateTime(event.newEvent.eventdate.year, event.newEvent.eventdate.month, event.newEvent.eventdate.day);
    if (updatedEventsGroupedByDate.containsKey(eventDate)) {
      updatedEventsGroupedByDate[eventDate]!.add(event.newEvent);
    } else {
      updatedEventsGroupedByDate[eventDate] = [event.newEvent];
    }

    emit(state.copyWith(events: updatedEvents, eventsGroupedByDate: updatedEventsGroupedByDate, showNotificationDot: true));
  }

  FutureOr<void> _onServerGetEventsByDateRange(ServerGetEventsByDateRange event, Emitter<CalendarState> emit) {
    final groupedEvents = <DateTime, List<InsertEventResult>>{};
    for (var event in event.eventsByDataRange) {
      final eventDate = DateTime(event.eventdate.year, event.eventdate.month, event.eventdate.day);
      if (groupedEvents.containsKey(eventDate)) {
        groupedEvents[eventDate]!.add(event);
      } else {
        groupedEvents[eventDate] = [event];
      }
    }
    emit(state.copyWith(eventsByDataRange: event.eventsByDataRange, eventsGroupedByDate: groupedEvents));
  }
}

