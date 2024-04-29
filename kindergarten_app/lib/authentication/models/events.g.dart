// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    );

Map<String, dynamic> _$$ServerAuthenticatesUserImplToJson(
        _$ServerAuthenticatesUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
      'email': instance.email,
      'isParent': instance.isParent,
      'isTeacher': instance.isTeacher,
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
