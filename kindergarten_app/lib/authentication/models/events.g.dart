// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToLogoutImpl _$$ClientWantsToLogoutImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToLogoutImpl(
      eventType: json['eventType'] as String,
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$$ClientWantsToLogoutImplToJson(
        _$ClientWantsToLogoutImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
    };

_$ClientWantsToAuthenticateWithJwtImpl
    _$$ClientWantsToAuthenticateWithJwtImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToAuthenticateWithJwtImpl(
          eventType: json['eventType'] as String,
          jwt: json['jwt'] as String,
        );

Map<String, dynamic> _$$ClientWantsToAuthenticateWithJwtImplToJson(
        _$ClientWantsToAuthenticateWithJwtImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
    };

_$ClientWantsToSignInImpl _$$ClientWantsToSignInImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToSignInImpl(
      eventType: json['eventType'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ClientWantsToSignInImplToJson(
        _$ClientWantsToSignInImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'email': instance.email,
      'password': instance.password,
    };

_$ServerAuthenticatesUserImpl _$$ServerAuthenticatesUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAuthenticatesUserImpl(
      eventType: json['eventType'] as String,
      jwt: json['jwt'] as String,
      email: json['email'] as String,
      isParent: json['isParent'] as bool,
      isTeacher: json['isTeacher'] as bool,
      name: json['name'] as String,
      Children: json['Children'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$ServerAuthenticatesUserImplToJson(
        _$ServerAuthenticatesUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
      'email': instance.email,
      'isParent': instance.isParent,
      'isTeacher': instance.isTeacher,
      'name': instance.name,
      'Children': instance.Children,
    };

_$ServerLogoutUserImpl _$$ServerLogoutUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerLogoutUserImpl(
      eventType: json['eventType'] as String,
    );

Map<String, dynamic> _$$ServerLogoutUserImplToJson(
        _$ServerLogoutUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
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
