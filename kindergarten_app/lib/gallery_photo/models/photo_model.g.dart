// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryImpl _$$GalleryImplFromJson(Map<String, dynamic> json) =>
    _$GalleryImpl(
      photoid: (json['photoid'] as num).toInt(),
      photourl: json['photourl'] as String?,
      description: json['description'] as String?,
      isLocal: json['isLocal'] as bool? ?? false,
    );

Map<String, dynamic> _$$GalleryImplToJson(_$GalleryImpl instance) =>
    <String, dynamic>{
      'photoid': instance.photoid,
      'photourl': instance.photourl,
      'description': instance.description,
      'isLocal': instance.isLocal,
    };
