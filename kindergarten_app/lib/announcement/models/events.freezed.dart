// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToGetAllAnnouncements _$ClientWantsToGetAllAnnouncementsFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToGetAllAnnouncements.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToGetAllAnnouncements {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToGetAllAnnouncementsCopyWith<ClientWantsToGetAllAnnouncements>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToGetAllAnnouncementsCopyWith<$Res> {
  factory $ClientWantsToGetAllAnnouncementsCopyWith(
          ClientWantsToGetAllAnnouncements value,
          $Res Function(ClientWantsToGetAllAnnouncements) then) =
      _$ClientWantsToGetAllAnnouncementsCopyWithImpl<$Res,
          ClientWantsToGetAllAnnouncements>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ClientWantsToGetAllAnnouncementsCopyWithImpl<$Res,
        $Val extends ClientWantsToGetAllAnnouncements>
    implements $ClientWantsToGetAllAnnouncementsCopyWith<$Res> {
  _$ClientWantsToGetAllAnnouncementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToGetAllAnnouncementsImplCopyWith<$Res>
    implements $ClientWantsToGetAllAnnouncementsCopyWith<$Res> {
  factory _$$ClientWantsToGetAllAnnouncementsImplCopyWith(
          _$ClientWantsToGetAllAnnouncementsImpl value,
          $Res Function(_$ClientWantsToGetAllAnnouncementsImpl) then) =
      __$$ClientWantsToGetAllAnnouncementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ClientWantsToGetAllAnnouncementsImplCopyWithImpl<$Res>
    extends _$ClientWantsToGetAllAnnouncementsCopyWithImpl<$Res,
        _$ClientWantsToGetAllAnnouncementsImpl>
    implements _$$ClientWantsToGetAllAnnouncementsImplCopyWith<$Res> {
  __$$ClientWantsToGetAllAnnouncementsImplCopyWithImpl(
      _$ClientWantsToGetAllAnnouncementsImpl _value,
      $Res Function(_$ClientWantsToGetAllAnnouncementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToGetAllAnnouncementsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToGetAllAnnouncementsImpl
    implements _ClientWantsToGetAllAnnouncements {
  const _$ClientWantsToGetAllAnnouncementsImpl({required this.eventType});

  factory _$ClientWantsToGetAllAnnouncementsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToGetAllAnnouncementsImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToGetAllAnnouncements(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToGetAllAnnouncementsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToGetAllAnnouncementsImplCopyWith<
          _$ClientWantsToGetAllAnnouncementsImpl>
      get copyWith => __$$ClientWantsToGetAllAnnouncementsImplCopyWithImpl<
          _$ClientWantsToGetAllAnnouncementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToGetAllAnnouncementsImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToGetAllAnnouncements
    implements ClientWantsToGetAllAnnouncements {
  const factory _ClientWantsToGetAllAnnouncements(
          {required final String eventType}) =
      _$ClientWantsToGetAllAnnouncementsImpl;

  factory _ClientWantsToGetAllAnnouncements.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToGetAllAnnouncementsImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToGetAllAnnouncementsImplCopyWith<
          _$ClientWantsToGetAllAnnouncementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToPostAnnouncement _$ClientWantsToPostAnnouncementFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToPostAnnouncement.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToPostAnnouncement {
  String get eventType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToPostAnnouncementCopyWith<ClientWantsToPostAnnouncement>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToPostAnnouncementCopyWith<$Res> {
  factory $ClientWantsToPostAnnouncementCopyWith(
          ClientWantsToPostAnnouncement value,
          $Res Function(ClientWantsToPostAnnouncement) then) =
      _$ClientWantsToPostAnnouncementCopyWithImpl<$Res,
          ClientWantsToPostAnnouncement>;
  @useResult
  $Res call({String eventType, String content});
}

/// @nodoc
class _$ClientWantsToPostAnnouncementCopyWithImpl<$Res,
        $Val extends ClientWantsToPostAnnouncement>
    implements $ClientWantsToPostAnnouncementCopyWith<$Res> {
  _$ClientWantsToPostAnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToPostAnnouncementImplCopyWith<$Res>
    implements $ClientWantsToPostAnnouncementCopyWith<$Res> {
  factory _$$ClientWantsToPostAnnouncementImplCopyWith(
          _$ClientWantsToPostAnnouncementImpl value,
          $Res Function(_$ClientWantsToPostAnnouncementImpl) then) =
      __$$ClientWantsToPostAnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String content});
}

/// @nodoc
class __$$ClientWantsToPostAnnouncementImplCopyWithImpl<$Res>
    extends _$ClientWantsToPostAnnouncementCopyWithImpl<$Res,
        _$ClientWantsToPostAnnouncementImpl>
    implements _$$ClientWantsToPostAnnouncementImplCopyWith<$Res> {
  __$$ClientWantsToPostAnnouncementImplCopyWithImpl(
      _$ClientWantsToPostAnnouncementImpl _value,
      $Res Function(_$ClientWantsToPostAnnouncementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? content = null,
  }) {
    return _then(_$ClientWantsToPostAnnouncementImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToPostAnnouncementImpl
    implements _ClientWantsToPostAnnouncement {
  const _$ClientWantsToPostAnnouncementImpl(
      {required this.eventType, required this.content});

  factory _$ClientWantsToPostAnnouncementImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToPostAnnouncementImplFromJson(json);

  @override
  final String eventType;
  @override
  final String content;

  @override
  String toString() {
    return 'ClientWantsToPostAnnouncement(eventType: $eventType, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToPostAnnouncementImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToPostAnnouncementImplCopyWith<
          _$ClientWantsToPostAnnouncementImpl>
      get copyWith => __$$ClientWantsToPostAnnouncementImplCopyWithImpl<
          _$ClientWantsToPostAnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToPostAnnouncementImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToPostAnnouncement
    implements ClientWantsToPostAnnouncement {
  const factory _ClientWantsToPostAnnouncement(
      {required final String eventType,
      required final String content}) = _$ClientWantsToPostAnnouncementImpl;

  factory _ClientWantsToPostAnnouncement.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToPostAnnouncementImpl.fromJson;

  @override
  String get eventType;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToPostAnnouncementImplCopyWith<
          _$ClientWantsToPostAnnouncementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerGetAllAnnouncements _$ServerGetAllAnnouncementsFromJson(
    Map<String, dynamic> json) {
  return _ServerGetAllAnnouncements.fromJson(json);
}

/// @nodoc
mixin _$ServerGetAllAnnouncements {
  String get eventType => throw _privateConstructorUsedError;
  List<AnnouncementWithSenderEmail> get Announcements =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerGetAllAnnouncementsCopyWith<ServerGetAllAnnouncements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerGetAllAnnouncementsCopyWith<$Res> {
  factory $ServerGetAllAnnouncementsCopyWith(ServerGetAllAnnouncements value,
          $Res Function(ServerGetAllAnnouncements) then) =
      _$ServerGetAllAnnouncementsCopyWithImpl<$Res, ServerGetAllAnnouncements>;
  @useResult
  $Res call(
      {String eventType, List<AnnouncementWithSenderEmail> Announcements});
}

/// @nodoc
class _$ServerGetAllAnnouncementsCopyWithImpl<$Res,
        $Val extends ServerGetAllAnnouncements>
    implements $ServerGetAllAnnouncementsCopyWith<$Res> {
  _$ServerGetAllAnnouncementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? Announcements = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      Announcements: null == Announcements
          ? _value.Announcements
          : Announcements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWithSenderEmail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerGetAllAnnouncementsImplCopyWith<$Res>
    implements $ServerGetAllAnnouncementsCopyWith<$Res> {
  factory _$$ServerGetAllAnnouncementsImplCopyWith(
          _$ServerGetAllAnnouncementsImpl value,
          $Res Function(_$ServerGetAllAnnouncementsImpl) then) =
      __$$ServerGetAllAnnouncementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType, List<AnnouncementWithSenderEmail> Announcements});
}

/// @nodoc
class __$$ServerGetAllAnnouncementsImplCopyWithImpl<$Res>
    extends _$ServerGetAllAnnouncementsCopyWithImpl<$Res,
        _$ServerGetAllAnnouncementsImpl>
    implements _$$ServerGetAllAnnouncementsImplCopyWith<$Res> {
  __$$ServerGetAllAnnouncementsImplCopyWithImpl(
      _$ServerGetAllAnnouncementsImpl _value,
      $Res Function(_$ServerGetAllAnnouncementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? Announcements = null,
  }) {
    return _then(_$ServerGetAllAnnouncementsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      Announcements: null == Announcements
          ? _value._Announcements
          : Announcements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWithSenderEmail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerGetAllAnnouncementsImpl implements _ServerGetAllAnnouncements {
  const _$ServerGetAllAnnouncementsImpl(
      {required this.eventType,
      final List<AnnouncementWithSenderEmail> Announcements = const []})
      : _Announcements = Announcements;

  factory _$ServerGetAllAnnouncementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerGetAllAnnouncementsImplFromJson(json);

  @override
  final String eventType;
  final List<AnnouncementWithSenderEmail> _Announcements;
  @override
  @JsonKey()
  List<AnnouncementWithSenderEmail> get Announcements {
    if (_Announcements is EqualUnmodifiableListView) return _Announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Announcements);
  }

  @override
  String toString() {
    return 'ServerGetAllAnnouncements(eventType: $eventType, Announcements: $Announcements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerGetAllAnnouncementsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._Announcements, _Announcements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_Announcements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerGetAllAnnouncementsImplCopyWith<_$ServerGetAllAnnouncementsImpl>
      get copyWith => __$$ServerGetAllAnnouncementsImplCopyWithImpl<
          _$ServerGetAllAnnouncementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerGetAllAnnouncementsImplToJson(
      this,
    );
  }
}

abstract class _ServerGetAllAnnouncements implements ServerGetAllAnnouncements {
  const factory _ServerGetAllAnnouncements(
          {required final String eventType,
          final List<AnnouncementWithSenderEmail> Announcements}) =
      _$ServerGetAllAnnouncementsImpl;

  factory _ServerGetAllAnnouncements.fromJson(Map<String, dynamic> json) =
      _$ServerGetAllAnnouncementsImpl.fromJson;

  @override
  String get eventType;
  @override
  List<AnnouncementWithSenderEmail> get Announcements;
  @override
  @JsonKey(ignore: true)
  _$$ServerGetAllAnnouncementsImplCopyWith<_$ServerGetAllAnnouncementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerPostAnnouncement _$ServerPostAnnouncementFromJson(
    Map<String, dynamic> json) {
  return _ServerPostAnnouncement.fromJson(json);
}

/// @nodoc
mixin _$ServerPostAnnouncement {
  String get eventType => throw _privateConstructorUsedError;
  AnnouncementWithSenderEmail get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerPostAnnouncementCopyWith<ServerPostAnnouncement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerPostAnnouncementCopyWith<$Res> {
  factory $ServerPostAnnouncementCopyWith(ServerPostAnnouncement value,
          $Res Function(ServerPostAnnouncement) then) =
      _$ServerPostAnnouncementCopyWithImpl<$Res, ServerPostAnnouncement>;
  @useResult
  $Res call({String eventType, AnnouncementWithSenderEmail message});

  $AnnouncementWithSenderEmailCopyWith<$Res> get message;
}

/// @nodoc
class _$ServerPostAnnouncementCopyWithImpl<$Res,
        $Val extends ServerPostAnnouncement>
    implements $ServerPostAnnouncementCopyWith<$Res> {
  _$ServerPostAnnouncementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AnnouncementWithSenderEmail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnouncementWithSenderEmailCopyWith<$Res> get message {
    return $AnnouncementWithSenderEmailCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerPostAnnouncementImplCopyWith<$Res>
    implements $ServerPostAnnouncementCopyWith<$Res> {
  factory _$$ServerPostAnnouncementImplCopyWith(
          _$ServerPostAnnouncementImpl value,
          $Res Function(_$ServerPostAnnouncementImpl) then) =
      __$$ServerPostAnnouncementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, AnnouncementWithSenderEmail message});

  @override
  $AnnouncementWithSenderEmailCopyWith<$Res> get message;
}

/// @nodoc
class __$$ServerPostAnnouncementImplCopyWithImpl<$Res>
    extends _$ServerPostAnnouncementCopyWithImpl<$Res,
        _$ServerPostAnnouncementImpl>
    implements _$$ServerPostAnnouncementImplCopyWith<$Res> {
  __$$ServerPostAnnouncementImplCopyWithImpl(
      _$ServerPostAnnouncementImpl _value,
      $Res Function(_$ServerPostAnnouncementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? message = null,
  }) {
    return _then(_$ServerPostAnnouncementImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AnnouncementWithSenderEmail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerPostAnnouncementImpl implements _ServerPostAnnouncement {
  const _$ServerPostAnnouncementImpl(
      {required this.eventType, required this.message});

  factory _$ServerPostAnnouncementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerPostAnnouncementImplFromJson(json);

  @override
  final String eventType;
  @override
  final AnnouncementWithSenderEmail message;

  @override
  String toString() {
    return 'ServerPostAnnouncement(eventType: $eventType, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerPostAnnouncementImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerPostAnnouncementImplCopyWith<_$ServerPostAnnouncementImpl>
      get copyWith => __$$ServerPostAnnouncementImplCopyWithImpl<
          _$ServerPostAnnouncementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerPostAnnouncementImplToJson(
      this,
    );
  }
}

abstract class _ServerPostAnnouncement implements ServerPostAnnouncement {
  const factory _ServerPostAnnouncement(
          {required final String eventType,
          required final AnnouncementWithSenderEmail message}) =
      _$ServerPostAnnouncementImpl;

  factory _ServerPostAnnouncement.fromJson(Map<String, dynamic> json) =
      _$ServerPostAnnouncementImpl.fromJson;

  @override
  String get eventType;
  @override
  AnnouncementWithSenderEmail get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerPostAnnouncementImplCopyWith<_$ServerPostAnnouncementImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsErrorMessageToClient _$ServerSendsErrorMessageToClientFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsErrorMessageToClient.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsErrorMessageToClient {
  String get eventType => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get receivedMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsErrorMessageToClientCopyWith<ServerSendsErrorMessageToClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsErrorMessageToClientCopyWith<$Res> {
  factory $ServerSendsErrorMessageToClientCopyWith(
          ServerSendsErrorMessageToClient value,
          $Res Function(ServerSendsErrorMessageToClient) then) =
      _$ServerSendsErrorMessageToClientCopyWithImpl<$Res,
          ServerSendsErrorMessageToClient>;
  @useResult
  $Res call({String eventType, String errorMessage, String receivedMessage});
}

/// @nodoc
class _$ServerSendsErrorMessageToClientCopyWithImpl<$Res,
        $Val extends ServerSendsErrorMessageToClient>
    implements $ServerSendsErrorMessageToClientCopyWith<$Res> {
  _$ServerSendsErrorMessageToClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? errorMessage = null,
    Object? receivedMessage = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      receivedMessage: null == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsErrorMessageToClientImplCopyWith<$Res>
    implements $ServerSendsErrorMessageToClientCopyWith<$Res> {
  factory _$$ServerSendsErrorMessageToClientImplCopyWith(
          _$ServerSendsErrorMessageToClientImpl value,
          $Res Function(_$ServerSendsErrorMessageToClientImpl) then) =
      __$$ServerSendsErrorMessageToClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String errorMessage, String receivedMessage});
}

/// @nodoc
class __$$ServerSendsErrorMessageToClientImplCopyWithImpl<$Res>
    extends _$ServerSendsErrorMessageToClientCopyWithImpl<$Res,
        _$ServerSendsErrorMessageToClientImpl>
    implements _$$ServerSendsErrorMessageToClientImplCopyWith<$Res> {
  __$$ServerSendsErrorMessageToClientImplCopyWithImpl(
      _$ServerSendsErrorMessageToClientImpl _value,
      $Res Function(_$ServerSendsErrorMessageToClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? errorMessage = null,
    Object? receivedMessage = null,
  }) {
    return _then(_$ServerSendsErrorMessageToClientImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      receivedMessage: null == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsErrorMessageToClientImpl
    implements _ServerSendsErrorMessageToClient {
  const _$ServerSendsErrorMessageToClientImpl(
      {required this.eventType,
      required this.errorMessage,
      required this.receivedMessage});

  factory _$ServerSendsErrorMessageToClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsErrorMessageToClientImplFromJson(json);

  @override
  final String eventType;
  @override
  final String errorMessage;
  @override
  final String receivedMessage;

  @override
  String toString() {
    return 'ServerSendsErrorMessageToClient(eventType: $eventType, errorMessage: $errorMessage, receivedMessage: $receivedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsErrorMessageToClientImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.receivedMessage, receivedMessage) ||
                other.receivedMessage == receivedMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventType, errorMessage, receivedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsErrorMessageToClientImplCopyWith<
          _$ServerSendsErrorMessageToClientImpl>
      get copyWith => __$$ServerSendsErrorMessageToClientImplCopyWithImpl<
          _$ServerSendsErrorMessageToClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsErrorMessageToClientImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsErrorMessageToClient
    implements ServerSendsErrorMessageToClient {
  const factory _ServerSendsErrorMessageToClient(
          {required final String eventType,
          required final String errorMessage,
          required final String receivedMessage}) =
      _$ServerSendsErrorMessageToClientImpl;

  factory _ServerSendsErrorMessageToClient.fromJson(Map<String, dynamic> json) =
      _$ServerSendsErrorMessageToClientImpl.fromJson;

  @override
  String get eventType;
  @override
  String get errorMessage;
  @override
  String get receivedMessage;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsErrorMessageToClientImplCopyWith<
          _$ServerSendsErrorMessageToClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
