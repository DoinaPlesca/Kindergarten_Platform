// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsertEventResultImpl _$$InsertEventResultImplFromJson(
        Map<String, dynamic> json) =>
    _$InsertEventResultImpl(
      eventid: (json['eventid'] as num).toInt(),
      eventdate: DateTime.parse(json['eventdate'] as String),
      eventdescription: json['eventdescription'] as String?,
      eventtitle: json['eventtitle'] as String?,
    );

Map<String, dynamic> _$$InsertEventResultImplToJson(
        _$InsertEventResultImpl instance) =>
    <String, dynamic>{
      'eventid': instance.eventid,
      'eventdate': instance.eventdate.toIso8601String(),
      'eventdescription': instance.eventdescription,
      'eventtitle': instance.eventtitle,
    };
