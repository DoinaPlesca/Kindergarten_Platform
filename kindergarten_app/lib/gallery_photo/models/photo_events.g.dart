// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToAddNewPhotoImpl _$$ClientWantsToAddNewPhotoImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToAddNewPhotoImpl(
      eventType: json['eventType'] as String,
      photourl: json['photourl'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ClientWantsToAddNewPhotoImplToJson(
        _$ClientWantsToAddNewPhotoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'photourl': instance.photourl,
      'description': instance.description,
    };

_$ClientWantsToGetLastPhotosImpl _$$ClientWantsToGetLastPhotosImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToGetLastPhotosImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ClientWantsToGetLastPhotosImplToJson(
        _$ClientWantsToGetLastPhotosImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
    };

_$ServerAddNewPhotoImpl _$$ServerAddNewPhotoImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAddNewPhotoImpl(
      eventType: json['eventType'] as String,
      newPhoto: Gallery.fromJson(json['newPhoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServerAddNewPhotoImplToJson(
        _$ServerAddNewPhotoImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'newPhoto': instance.newPhoto,
    };

_$ServerGetLastPhotosImpl _$$ServerGetLastPhotosImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerGetLastPhotosImpl(
      eventType: json['eventType'] as String,
      lastPhotos: (json['lastPhotos'] as List<dynamic>?)
              ?.map((e) => Gallery.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServerGetLastPhotosImplToJson(
        _$ServerGetLastPhotosImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'lastPhotos': instance.lastPhotos,
    };
