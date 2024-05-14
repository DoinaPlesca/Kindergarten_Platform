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

ClientWantsToMarkAnnouncementAsRead
    _$ClientWantsToMarkAnnouncementAsReadFromJson(Map<String, dynamic> json) {
  return _ClientWantsToMarkAnnouncementAsRead.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToMarkAnnouncementAsRead {
  String get eventType => throw _privateConstructorUsedError;
  int get announcementId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToMarkAnnouncementAsReadCopyWith<
          ClientWantsToMarkAnnouncementAsRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToMarkAnnouncementAsReadCopyWith<$Res> {
  factory $ClientWantsToMarkAnnouncementAsReadCopyWith(
          ClientWantsToMarkAnnouncementAsRead value,
          $Res Function(ClientWantsToMarkAnnouncementAsRead) then) =
      _$ClientWantsToMarkAnnouncementAsReadCopyWithImpl<$Res,
          ClientWantsToMarkAnnouncementAsRead>;
  @useResult
  $Res call({String eventType, int announcementId});
}

/// @nodoc
class _$ClientWantsToMarkAnnouncementAsReadCopyWithImpl<$Res,
        $Val extends ClientWantsToMarkAnnouncementAsRead>
    implements $ClientWantsToMarkAnnouncementAsReadCopyWith<$Res> {
  _$ClientWantsToMarkAnnouncementAsReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? announcementId = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      announcementId: null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToMarkAnnouncementAsReadImplCopyWith<$Res>
    implements $ClientWantsToMarkAnnouncementAsReadCopyWith<$Res> {
  factory _$$ClientWantsToMarkAnnouncementAsReadImplCopyWith(
          _$ClientWantsToMarkAnnouncementAsReadImpl value,
          $Res Function(_$ClientWantsToMarkAnnouncementAsReadImpl) then) =
      __$$ClientWantsToMarkAnnouncementAsReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, int announcementId});
}

/// @nodoc
class __$$ClientWantsToMarkAnnouncementAsReadImplCopyWithImpl<$Res>
    extends _$ClientWantsToMarkAnnouncementAsReadCopyWithImpl<$Res,
        _$ClientWantsToMarkAnnouncementAsReadImpl>
    implements _$$ClientWantsToMarkAnnouncementAsReadImplCopyWith<$Res> {
  __$$ClientWantsToMarkAnnouncementAsReadImplCopyWithImpl(
      _$ClientWantsToMarkAnnouncementAsReadImpl _value,
      $Res Function(_$ClientWantsToMarkAnnouncementAsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? announcementId = null,
  }) {
    return _then(_$ClientWantsToMarkAnnouncementAsReadImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      announcementId: null == announcementId
          ? _value.announcementId
          : announcementId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToMarkAnnouncementAsReadImpl
    implements _ClientWantsToMarkAnnouncementAsRead {
  const _$ClientWantsToMarkAnnouncementAsReadImpl(
      {required this.eventType, required this.announcementId});

  factory _$ClientWantsToMarkAnnouncementAsReadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToMarkAnnouncementAsReadImplFromJson(json);

  @override
  final String eventType;
  @override
  final int announcementId;

  @override
  String toString() {
    return 'ClientWantsToMarkAnnouncementAsRead(eventType: $eventType, announcementId: $announcementId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToMarkAnnouncementAsReadImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.announcementId, announcementId) ||
                other.announcementId == announcementId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, announcementId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToMarkAnnouncementAsReadImplCopyWith<
          _$ClientWantsToMarkAnnouncementAsReadImpl>
      get copyWith => __$$ClientWantsToMarkAnnouncementAsReadImplCopyWithImpl<
          _$ClientWantsToMarkAnnouncementAsReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToMarkAnnouncementAsReadImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToMarkAnnouncementAsRead
    implements ClientWantsToMarkAnnouncementAsRead {
  const factory _ClientWantsToMarkAnnouncementAsRead(
          {required final String eventType,
          required final int announcementId}) =
      _$ClientWantsToMarkAnnouncementAsReadImpl;

  factory _ClientWantsToMarkAnnouncementAsRead.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToMarkAnnouncementAsReadImpl.fromJson;

  @override
  String get eventType;
  @override
  int get announcementId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToMarkAnnouncementAsReadImplCopyWith<
          _$ClientWantsToMarkAnnouncementAsReadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerMarkAnnouncementAsRead _$ServerMarkAnnouncementAsReadFromJson(
    Map<String, dynamic> json) {
  return _ServerMarkAnnouncementAsRead.fromJson(json);
}

/// @nodoc
mixin _$ServerMarkAnnouncementAsRead {
  String get eventType => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerMarkAnnouncementAsReadCopyWith<ServerMarkAnnouncementAsRead>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerMarkAnnouncementAsReadCopyWith<$Res> {
  factory $ServerMarkAnnouncementAsReadCopyWith(
          ServerMarkAnnouncementAsRead value,
          $Res Function(ServerMarkAnnouncementAsRead) then) =
      _$ServerMarkAnnouncementAsReadCopyWithImpl<$Res,
          ServerMarkAnnouncementAsRead>;
  @useResult
  $Res call({String eventType, int id, int userId, String email});
}

/// @nodoc
class _$ServerMarkAnnouncementAsReadCopyWithImpl<$Res,
        $Val extends ServerMarkAnnouncementAsRead>
    implements $ServerMarkAnnouncementAsReadCopyWith<$Res> {
  _$ServerMarkAnnouncementAsReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? id = null,
    Object? userId = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerMarkAnnouncementAsReadImplCopyWith<$Res>
    implements $ServerMarkAnnouncementAsReadCopyWith<$Res> {
  factory _$$ServerMarkAnnouncementAsReadImplCopyWith(
          _$ServerMarkAnnouncementAsReadImpl value,
          $Res Function(_$ServerMarkAnnouncementAsReadImpl) then) =
      __$$ServerMarkAnnouncementAsReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, int id, int userId, String email});
}

/// @nodoc
class __$$ServerMarkAnnouncementAsReadImplCopyWithImpl<$Res>
    extends _$ServerMarkAnnouncementAsReadCopyWithImpl<$Res,
        _$ServerMarkAnnouncementAsReadImpl>
    implements _$$ServerMarkAnnouncementAsReadImplCopyWith<$Res> {
  __$$ServerMarkAnnouncementAsReadImplCopyWithImpl(
      _$ServerMarkAnnouncementAsReadImpl _value,
      $Res Function(_$ServerMarkAnnouncementAsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? id = null,
    Object? userId = null,
    Object? email = null,
  }) {
    return _then(_$ServerMarkAnnouncementAsReadImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerMarkAnnouncementAsReadImpl
    implements _ServerMarkAnnouncementAsRead {
  const _$ServerMarkAnnouncementAsReadImpl(
      {required this.eventType,
      required this.id,
      required this.userId,
      required this.email});

  factory _$ServerMarkAnnouncementAsReadImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerMarkAnnouncementAsReadImplFromJson(json);

  @override
  final String eventType;
  @override
  final int id;
  @override
  final int userId;
  @override
  final String email;

  @override
  String toString() {
    return 'ServerMarkAnnouncementAsRead(eventType: $eventType, id: $id, userId: $userId, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerMarkAnnouncementAsReadImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, id, userId, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerMarkAnnouncementAsReadImplCopyWith<
          _$ServerMarkAnnouncementAsReadImpl>
      get copyWith => __$$ServerMarkAnnouncementAsReadImplCopyWithImpl<
          _$ServerMarkAnnouncementAsReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerMarkAnnouncementAsReadImplToJson(
      this,
    );
  }
}

abstract class _ServerMarkAnnouncementAsRead
    implements ServerMarkAnnouncementAsRead {
  const factory _ServerMarkAnnouncementAsRead(
      {required final String eventType,
      required final int id,
      required final int userId,
      required final String email}) = _$ServerMarkAnnouncementAsReadImpl;

  factory _ServerMarkAnnouncementAsRead.fromJson(Map<String, dynamic> json) =
      _$ServerMarkAnnouncementAsReadImpl.fromJson;

  @override
  String get eventType;
  @override
  int get id;
  @override
  int get userId;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ServerMarkAnnouncementAsReadImplCopyWith<
          _$ServerMarkAnnouncementAsReadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerUnreadAnnouncements _$ServerUnreadAnnouncementsFromJson(
    Map<String, dynamic> json) {
  return _ServerUnreadAnnouncements.fromJson(json);
}

/// @nodoc
mixin _$ServerUnreadAnnouncements {
  String get eventType => throw _privateConstructorUsedError;
  List<AnnouncementWithSenderEmail> get UnreadAnnouncements =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerUnreadAnnouncementsCopyWith<ServerUnreadAnnouncements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerUnreadAnnouncementsCopyWith<$Res> {
  factory $ServerUnreadAnnouncementsCopyWith(ServerUnreadAnnouncements value,
          $Res Function(ServerUnreadAnnouncements) then) =
      _$ServerUnreadAnnouncementsCopyWithImpl<$Res, ServerUnreadAnnouncements>;
  @useResult
  $Res call(
      {String eventType,
      List<AnnouncementWithSenderEmail> UnreadAnnouncements});
}

/// @nodoc
class _$ServerUnreadAnnouncementsCopyWithImpl<$Res,
        $Val extends ServerUnreadAnnouncements>
    implements $ServerUnreadAnnouncementsCopyWith<$Res> {
  _$ServerUnreadAnnouncementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? UnreadAnnouncements = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      UnreadAnnouncements: null == UnreadAnnouncements
          ? _value.UnreadAnnouncements
          : UnreadAnnouncements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWithSenderEmail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerUnreadAnnouncementsImplCopyWith<$Res>
    implements $ServerUnreadAnnouncementsCopyWith<$Res> {
  factory _$$ServerUnreadAnnouncementsImplCopyWith(
          _$ServerUnreadAnnouncementsImpl value,
          $Res Function(_$ServerUnreadAnnouncementsImpl) then) =
      __$$ServerUnreadAnnouncementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      List<AnnouncementWithSenderEmail> UnreadAnnouncements});
}

/// @nodoc
class __$$ServerUnreadAnnouncementsImplCopyWithImpl<$Res>
    extends _$ServerUnreadAnnouncementsCopyWithImpl<$Res,
        _$ServerUnreadAnnouncementsImpl>
    implements _$$ServerUnreadAnnouncementsImplCopyWith<$Res> {
  __$$ServerUnreadAnnouncementsImplCopyWithImpl(
      _$ServerUnreadAnnouncementsImpl _value,
      $Res Function(_$ServerUnreadAnnouncementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? UnreadAnnouncements = null,
  }) {
    return _then(_$ServerUnreadAnnouncementsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      UnreadAnnouncements: null == UnreadAnnouncements
          ? _value._UnreadAnnouncements
          : UnreadAnnouncements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWithSenderEmail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerUnreadAnnouncementsImpl implements _ServerUnreadAnnouncements {
  const _$ServerUnreadAnnouncementsImpl(
      {required this.eventType,
      required final List<AnnouncementWithSenderEmail> UnreadAnnouncements})
      : _UnreadAnnouncements = UnreadAnnouncements;

  factory _$ServerUnreadAnnouncementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerUnreadAnnouncementsImplFromJson(json);

  @override
  final String eventType;
  final List<AnnouncementWithSenderEmail> _UnreadAnnouncements;
  @override
  List<AnnouncementWithSenderEmail> get UnreadAnnouncements {
    if (_UnreadAnnouncements is EqualUnmodifiableListView)
      return _UnreadAnnouncements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_UnreadAnnouncements);
  }

  @override
  String toString() {
    return 'ServerUnreadAnnouncements(eventType: $eventType, UnreadAnnouncements: $UnreadAnnouncements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerUnreadAnnouncementsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._UnreadAnnouncements, _UnreadAnnouncements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_UnreadAnnouncements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerUnreadAnnouncementsImplCopyWith<_$ServerUnreadAnnouncementsImpl>
      get copyWith => __$$ServerUnreadAnnouncementsImplCopyWithImpl<
          _$ServerUnreadAnnouncementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerUnreadAnnouncementsImplToJson(
      this,
    );
  }
}

abstract class _ServerUnreadAnnouncements implements ServerUnreadAnnouncements {
  const factory _ServerUnreadAnnouncements(
      {required final String eventType,
      required final List<AnnouncementWithSenderEmail>
          UnreadAnnouncements}) = _$ServerUnreadAnnouncementsImpl;

  factory _ServerUnreadAnnouncements.fromJson(Map<String, dynamic> json) =
      _$ServerUnreadAnnouncementsImpl.fromJson;

  @override
  String get eventType;
  @override
  List<AnnouncementWithSenderEmail> get UnreadAnnouncements;
  @override
  @JsonKey(ignore: true)
  _$$ServerUnreadAnnouncementsImplCopyWith<_$ServerUnreadAnnouncementsImpl>
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

ServerNotifiesClientsWhenNewAnnouncementWasPost
    _$ServerNotifiesClientsWhenNewAnnouncementWasPostFromJson(
        Map<String, dynamic> json) {
  return _ServerNotifiesClientsWhenNewAnnouncementWasPost.fromJson(json);
}

/// @nodoc
mixin _$ServerNotifiesClientsWhenNewAnnouncementWasPost {
  String get eventType => throw _privateConstructorUsedError;
  String get notificationmessage => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWith<
          ServerNotifiesClientsWhenNewAnnouncementWasPost>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWith<$Res> {
  factory $ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWith(
          ServerNotifiesClientsWhenNewAnnouncementWasPost value,
          $Res Function(ServerNotifiesClientsWhenNewAnnouncementWasPost) then) =
      _$ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWithImpl<$Res,
          ServerNotifiesClientsWhenNewAnnouncementWasPost>;
  @useResult
  $Res call({String eventType, String notificationmessage, String userName});
}

/// @nodoc
class _$ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWithImpl<$Res,
        $Val extends ServerNotifiesClientsWhenNewAnnouncementWasPost>
    implements $ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWith<$Res> {
  _$ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? notificationmessage = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      notificationmessage: null == notificationmessage
          ? _value.notificationmessage
          : notificationmessage // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWith<
        $Res>
    implements $ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWith<$Res> {
  factory _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWith(
          _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl value,
          $Res Function(_$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl)
              then) =
      __$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String notificationmessage, String userName});
}

/// @nodoc
class __$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWithImpl<$Res>
    extends _$ServerNotifiesClientsWhenNewAnnouncementWasPostCopyWithImpl<$Res,
        _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl>
    implements
        _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWith<$Res> {
  __$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWithImpl(
      _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl _value,
      $Res Function(_$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? notificationmessage = null,
    Object? userName = null,
  }) {
    return _then(_$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      notificationmessage: null == notificationmessage
          ? _value.notificationmessage
          : notificationmessage // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl
    implements _ServerNotifiesClientsWhenNewAnnouncementWasPost {
  const _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl(
      {required this.eventType,
      required this.notificationmessage,
      required this.userName});

  factory _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplFromJson(json);

  @override
  final String eventType;
  @override
  final String notificationmessage;
  @override
  final String userName;

  @override
  String toString() {
    return 'ServerNotifiesClientsWhenNewAnnouncementWasPost(eventType: $eventType, notificationmessage: $notificationmessage, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.notificationmessage, notificationmessage) ||
                other.notificationmessage == notificationmessage) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventType, notificationmessage, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWith<
          _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl>
      get copyWith =>
          __$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWithImpl<
                  _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplToJson(
      this,
    );
  }
}

abstract class _ServerNotifiesClientsWhenNewAnnouncementWasPost
    implements ServerNotifiesClientsWhenNewAnnouncementWasPost {
  const factory _ServerNotifiesClientsWhenNewAnnouncementWasPost(
          {required final String eventType,
          required final String notificationmessage,
          required final String userName}) =
      _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl;

  factory _ServerNotifiesClientsWhenNewAnnouncementWasPost.fromJson(
          Map<String, dynamic> json) =
      _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl.fromJson;

  @override
  String get eventType;
  @override
  String get notificationmessage;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$ServerNotifiesClientsWhenNewAnnouncementWasPostImplCopyWith<
          _$ServerNotifiesClientsWhenNewAnnouncementWasPostImpl>
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
