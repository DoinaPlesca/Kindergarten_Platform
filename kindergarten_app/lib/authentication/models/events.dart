import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_app/announcement/models/announc_model.dart';
import '../../events_base.dart';


part 'events.freezed.dart';
part 'events.g.dart';

class AuthenticationServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    return switch (type) {
      ServerAuthenticatesUser.eventName => ServerAuthenticatesUser.fromJson(json),
      _ => throw "Unknown event type: $type in $json"
    };
  }
}

/// CLIENT---------

@freezed
class ClientWantsToLogout extends ClientEvent with _$ClientWantsToLogout {
  static const String eventName = "ClientWantsToLogout";
  const factory ClientWantsToLogout({
    required String eventType,
    required String jwt,
  }) = _ClientWantsToLogout;

  factory ClientWantsToLogout.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToLogoutFromJson(json);
}

@freezed
class ClientWantsToAuthenticateWithJwt extends ClientEvent
    with _$ClientWantsToAuthenticateWithJwt {
  static const String eventName = "ClientWantsToAuthenticateWithJwt";
  const factory ClientWantsToAuthenticateWithJwt({
    required String eventType,
    required String jwt,
  }) = _ClientWantsToAuthenticateWithJwt;

  factory ClientWantsToAuthenticateWithJwt.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToAuthenticateWithJwtFromJson(json);
}

@freezed
class ClientWantsToSignIn extends ClientEvent
    with _$ClientWantsToSignIn {
  static const String eventName = "ClientWantsToSignIn";
  const factory ClientWantsToSignIn({
    required String eventType,
    required String email,
    required String password,
  }) = _ClientWantsToSignIn;

  factory ClientWantsToSignIn.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToSignInFromJson(json);
}


/// SERVER------

@freezed
class ServerAuthenticatesUser extends ServerEvent
    with _$ServerAuthenticatesUser {
  static const String eventName = "ServerAuthenticatesUser";
  const factory ServerAuthenticatesUser({
    required String eventType,
    required String jwt,
    required String email,
    required bool isParent,
    required bool isTeacher,
    required String name,
    @Default([]) List<dynamic> Children,
    @Default([]) List<AnnouncementWithSenderEmail> UnreadAnnouncements,
  }) = _ServerAuthenticatesUser;

  factory ServerAuthenticatesUser.fromJson(Map<String, Object?> json) =>
      _$ServerAuthenticatesUserFromJson(json);
}

@freezed
class ServerLogoutUser extends ServerEvent with _$ServerLogoutUser {
  static const String eventName = "ServerLogoutUser";
  const factory ServerLogoutUser({
    required String eventType,
  }) = _ServerLogoutUser;

  factory ServerLogoutUser.fromJson(Map<String, Object?> json) =>
      _$ServerLogoutUserFromJson(json);
}


@freezed
class ServerSendsErrorMessageToClient extends ServerEvent
    with _$ServerSendsErrorMessageToClient {
  static const String eventName = "ServerSendsErrorMessageToClient";
  const factory ServerSendsErrorMessageToClient({
    required String eventType,
    required String errorMessage,
    required String receivedMessage,
  }) = _ServerSendsErrorMessageToClient;

  factory ServerSendsErrorMessageToClient.fromJson(Map<String, Object?> json) =>
      _$ServerSendsErrorMessageToClientFromJson(json);
}
