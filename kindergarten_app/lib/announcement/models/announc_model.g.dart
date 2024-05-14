// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementWithSenderEmailImpl _$$AnnouncementWithSenderEmailImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementWithSenderEmailImpl(
      id: (json['id'] as num).toInt(),
      sender: (json['sender'] as num).toInt(),
      content: json['content'] as String?,
      timestamp: DateTime.parse(json['timestamp'] as String),
      email: json['email'] as String?,
      isread: json['isread'] as bool,
    );

Map<String, dynamic> _$$AnnouncementWithSenderEmailImplToJson(
        _$AnnouncementWithSenderEmailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'email': instance.email,
      'isread': instance.isread,
    };
