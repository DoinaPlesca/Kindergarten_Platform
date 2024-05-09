// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToGetAllAnnouncementsImpl
    _$$ClientWantsToGetAllAnnouncementsImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToGetAllAnnouncementsImpl(
          eventType: json['eventType'] as String,
        );

Map<String, dynamic> _$$ClientWantsToGetAllAnnouncementsImplToJson(
        _$ClientWantsToGetAllAnnouncementsImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ClientWantsToPostAnnouncementImpl
    _$$ClientWantsToPostAnnouncementImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToPostAnnouncementImpl(
          eventType: json['eventType'] as String,
          content: json['content'] as String,
        );

Map<String, dynamic> _$$ClientWantsToPostAnnouncementImplToJson(
        _$ClientWantsToPostAnnouncementImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'content': instance.content,
    };

_$ServerGetAllAnnouncementsImpl _$$ServerGetAllAnnouncementsImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerGetAllAnnouncementsImpl(
      eventType: json['eventType'] as String,
      Announcements: (json['Announcements'] as List<dynamic>?)
              ?.map((e) => AnnouncementWithSenderEmail.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServerGetAllAnnouncementsImplToJson(
        _$ServerGetAllAnnouncementsImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'Announcements': instance.Announcements,
    };

_$ServerPostAnnouncementImpl _$$ServerPostAnnouncementImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerPostAnnouncementImpl(
      eventType: json['eventType'] as String,
      message: AnnouncementWithSenderEmail.fromJson(
          json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerPostAnnouncementImplToJson(
        _$ServerPostAnnouncementImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'message': instance.message,
    };

_$ServerSendsErrorMessageToClientImpl
    _$$ServerSendsErrorMessageToClientImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsErrorMessageToClientImpl(
          eventType: json['eventType'] as String,
          errorMessage: json['errorMessage'] as String,
          receivedMessage: json['receivedMessage'] as String,
        );

Map<String, dynamic> _$$ServerSendsErrorMessageToClientImplToJson(
        _$ServerSendsErrorMessageToClientImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'errorMessage': instance.errorMessage,
      'receivedMessage': instance.receivedMessage,
    };
