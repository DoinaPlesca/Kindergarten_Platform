// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToCreateNewCalendarEventImpl
    _$$ClientWantsToCreateNewCalendarEventImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToCreateNewCalendarEventImpl(
          eventType: json['eventType'] as String,
          eventdate: DateTime.parse(json['eventdate'] as String),
          eventdescription: json['eventdescription'] as String,
          eventtitle: json['eventtitle'] as String,
        );

Map<String, dynamic> _$$ClientWantsToCreateNewCalendarEventImplToJson(
        _$ClientWantsToCreateNewCalendarEventImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'eventdate': instance.eventdate.toIso8601String(),
      'eventdescription': instance.eventdescription,
      'eventtitle': instance.eventtitle,
    };

_$ClientWantsToGetEventsByDateRangeImpl
    _$$ClientWantsToGetEventsByDateRangeImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToGetEventsByDateRangeImpl(
          eventType: json['eventType'] as String,
          StartDate: DateTime.parse(json['StartDate'] as String),
          EndDate: DateTime.parse(json['EndDate'] as String),
        );

Map<String, dynamic> _$$ClientWantsToGetEventsByDateRangeImplToJson(
        _$ClientWantsToGetEventsByDateRangeImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'StartDate': instance.StartDate.toIso8601String(),
      'EndDate': instance.EndDate.toIso8601String(),
    };

_$ServerCreateCalendarEventImpl _$$ServerCreateCalendarEventImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerCreateCalendarEventImpl(
      eventType: json['eventType'] as String,
      newEvent:
          InsertEventResult.fromJson(json['newEvent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerCreateCalendarEventImplToJson(
        _$ServerCreateCalendarEventImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'newEvent': instance.newEvent,
    };

_$ServerGetEventsByDateRangeImpl _$$ServerGetEventsByDateRangeImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerGetEventsByDateRangeImpl(
      eventType: json['eventType'] as String,
      eventsByDataRange: (json['eventsByDataRange'] as List<dynamic>?)
              ?.map(
                  (e) => InsertEventResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServerGetEventsByDateRangeImplToJson(
        _$ServerGetEventsByDateRangeImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'eventsByDataRange': instance.eventsByDataRange,
    };
