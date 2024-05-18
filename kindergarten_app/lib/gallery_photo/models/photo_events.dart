import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_app/gallery_photo/models/photo_model.dart';

import '../../events_base.dart';

part 'photo_events.freezed.dart';
part 'photo_events.g.dart';
class GalleryServerEvents extends BaseEvent {
  static Object fromJson(Map<String, dynamic> json) {
    final type = json['eventType'];
    switch (type) {
      case ServerAddNewPhoto.eventName:
        return ServerAddNewPhoto.fromJson(json);
      case ServerGetLastPhotos.eventName:
        return ServerGetLastPhotos.fromJson(json);
      default:
        throw "Unknown event type: $type in $json";
    }
  }
}


// CLIENT EVENTS
@freezed
class ClientWantsToAddNewPhoto extends ClientEvent with _$ClientWantsToAddNewPhoto {
  static const String eventName = "ClientWantsToAddNewPhoto";
  const factory ClientWantsToAddNewPhoto({
    required String eventType,
    required String photourl,
    required String description,
  }) = _ClientWantsToAddNewPhoto;

  factory ClientWantsToAddNewPhoto.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToAddNewPhotoFromJson(json);
}




@freezed
class ClientWantsToGetLastPhotos extends ClientEvent
    with _$ClientWantsToGetLastPhotos {
  static const String eventName = "ClientWantsToGetLastPhotos";
  const factory ClientWantsToGetLastPhotos({
    required String eventType,

  }) = _ClientWantsToGetLastPhotos;

  factory ClientWantsToGetLastPhotos.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToGetLastPhotosFromJson(json);
}

// SERVER EVENTS
@freezed
class ServerAddNewPhoto  extends ServerEvent
    with _$ServerAddNewPhoto {
  static const String eventName = "ServerAddNewPhoto";
  const factory ServerAddNewPhoto({
    required String eventType,
     required Gallery newPhoto,
  }) = _ServerAddNewPhoto;

  factory ServerAddNewPhoto.fromJson(Map<String, dynamic> json) =>
      _$ServerAddNewPhotoFromJson(json);
}

@freezed
class ServerGetLastPhotos  extends ServerEvent
    with _$ServerGetLastPhotos {
  static const String eventName = "ServerGetLastPhotos";
  const factory ServerGetLastPhotos({
    required String eventType,
    @Default([]) List<Gallery> lastPhotos,
  }) = _ServerGetLastPhotos;

  factory ServerGetLastPhotos.fromJson(Map<String, dynamic> json) =>
      _$ServerGetLastPhotosFromJson(json);
}

