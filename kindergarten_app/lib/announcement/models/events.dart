import 'package:freezed_annotation/freezed_annotation.dart';
import '../../events_base/events_base.dart';
import 'announc_model.dart';

part 'events.freezed.dart';
part 'events.g.dart';


class AnnouncementServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, dynamic> json) {
    final type = json['eventType'];
    switch (type) {
      case ServerGetAllAnnouncements.name:
        return ServerGetAllAnnouncements.fromJson(json);
      case ServerSendsErrorMessageToClient.name:
        return ServerSendsErrorMessageToClient.fromJson(json);
      case ServerPostAnnouncement.name:
        return ServerPostAnnouncement.fromJson(json);
      default:
        throw "Unknown event type: $type in $json";
    }
  }
}



//CLIENT EVENTS
@freezed
class ClientWantsToGetAllAnnouncements extends ClientEvent
    with _$ClientWantsToGetAllAnnouncements {
  static const String name = "ClientWantsToGetAllAnnouncements";
  const factory ClientWantsToGetAllAnnouncements({
    required String eventType,

  }) = _ClientWantsToGetAllAnnouncements;

  factory ClientWantsToGetAllAnnouncements.fromJson(Map<String, dynamic> json) =>
      _$ClientWantsToGetAllAnnouncementsFromJson(json);
}


@freezed
class ClientWantsToPostAnnouncement extends ClientEvent
    with _$ClientWantsToPostAnnouncement {
  static const String name = "ClientWantsToPostAnnouncement";
  const factory ClientWantsToPostAnnouncement({
    required String eventType,
    required String content,
  }) = _ClientWantsToPostAnnouncement;

  factory ClientWantsToPostAnnouncement.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToPostAnnouncementFromJson(json);
}


//SERVER EVENTS

@freezed
class ServerGetAllAnnouncements extends ServerEvent
    with _$ServerGetAllAnnouncements {
  static const String name = "ServerGetAllAnnouncements";
  const factory ServerGetAllAnnouncements({
    required String eventType,
    @Default([]) List<AnnouncementWithSenderEmail> Announcements,
  }) = _ServerGetAllAnnouncements;

  factory ServerGetAllAnnouncements.fromJson(Map<String, dynamic> json) =>
      _$ServerGetAllAnnouncementsFromJson(json);
}


@freezed
class ServerPostAnnouncement  extends ServerEvent
with _$ServerPostAnnouncement {
  static const String name = "ServerPostAnnouncement";
  const factory ServerPostAnnouncement({
    required String eventType,
    required AnnouncementWithSenderEmail message,
  }) = _ServerPostAnnouncement;

  factory ServerPostAnnouncement.fromJson(Map<String, dynamic> json) =>
      _$ServerPostAnnouncementFromJson(json);
}

//ERROR

@freezed
class ServerSendsErrorMessageToClient extends ServerEvent
    with _$ServerSendsErrorMessageToClient {
  static const String name = "ServerSendsErrorMessageToClient";

  const factory ServerSendsErrorMessageToClient({
    required String eventType,
    required String errorMessage,
    required String receivedMessage,
  }) = _ServerSendsErrorMessageToClient;

  factory ServerSendsErrorMessageToClient.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsErrorMessageToClientFromJson(json);
}
