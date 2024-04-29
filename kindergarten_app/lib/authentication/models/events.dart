import 'package:freezed_annotation/freezed_annotation.dart';
part 'events.freezed.dart';
part 'events.g.dart';


sealed class BaseEvent {}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

@freezed
class ClientWantsToAuthenticateWithJwt extends ClientEvent
    with _$ClientWantsToAuthenticateWithJwt {
  static const String name = "ClientWantsToAuthenticateWithJwt";
  const factory ClientWantsToAuthenticateWithJwt({
    required String eventType,
    required String jwt,
  }) = _ClientWantsToAuthenticateWithJwt;

  factory ClientWantsToAuthenticateWithJwt.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToAuthenticateWithJwtFromJson(json);
}



@freezed
class ClientWantsToSignIn extends ClientEvent with _$ClientWantsToSignIn {
  static const String name = "ClientWantsToSignIn";
  const factory ClientWantsToSignIn({
    required String eventType,
    required String email,
    required String password,
  }) = _ClientWantsToSignIn;

  factory ClientWantsToSignIn.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToSignInFromJson(json);
}

class ServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    return switch (type) {
      ServerAuthenticatesUser.name => ServerAuthenticatesUser.fromJson(json),

      _ => throw "Unknown event type: $type in $json"
    };
  }
}



@freezed
class ServerAuthenticatesUser extends ServerEvent
    with _$ServerAuthenticatesUser {
  static const String name = "ServerAuthenticatesUser";
  const factory ServerAuthenticatesUser({
    required String eventType,
    required String jwt,
    required String email,
    required bool isParent,
    required bool isTeacher
  }) = _ServerAuthenticatesUser;

  factory ServerAuthenticatesUser.fromJson(Map<String, Object?> json) =>
      _$ServerAuthenticatesUserFromJson(json);
}




@freezed
class ServerSendsErrorMessageToClient extends ServerEvent
    with _$ServerSendsErrorMessageToClient {
  static const String name = "ServerSendsErrorMessageToClient";
  const factory ServerSendsErrorMessageToClient({
    required String eventType,
    required String errorMessage,
    required String receivedMessage,
  }) = _ServerSendsErrorMessageToClient;

  factory ServerSendsErrorMessageToClient.fromJson(Map<String, Object?> json) =>
      _$ServerSendsErrorMessageToClientFromJson(json);
}