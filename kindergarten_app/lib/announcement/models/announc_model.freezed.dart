// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementWithSenderEmail _$AnnouncementWithSenderEmailFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementWithSenderEmail.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementWithSenderEmail {
  int get id => throw _privateConstructorUsedError;
  int get sender => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get isread => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementWithSenderEmailCopyWith<AnnouncementWithSenderEmail>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementWithSenderEmailCopyWith<$Res> {
  factory $AnnouncementWithSenderEmailCopyWith(
          AnnouncementWithSenderEmail value,
          $Res Function(AnnouncementWithSenderEmail) then) =
      _$AnnouncementWithSenderEmailCopyWithImpl<$Res,
          AnnouncementWithSenderEmail>;
  @useResult
  $Res call(
      {int id,
      int sender,
      String? content,
      DateTime timestamp,
      String? email,
      bool isread});
}

/// @nodoc
class _$AnnouncementWithSenderEmailCopyWithImpl<$Res,
        $Val extends AnnouncementWithSenderEmail>
    implements $AnnouncementWithSenderEmailCopyWith<$Res> {
  _$AnnouncementWithSenderEmailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? content = freezed,
    Object? timestamp = null,
    Object? email = freezed,
    Object? isread = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isread: null == isread
          ? _value.isread
          : isread // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementWithSenderEmailImplCopyWith<$Res>
    implements $AnnouncementWithSenderEmailCopyWith<$Res> {
  factory _$$AnnouncementWithSenderEmailImplCopyWith(
          _$AnnouncementWithSenderEmailImpl value,
          $Res Function(_$AnnouncementWithSenderEmailImpl) then) =
      __$$AnnouncementWithSenderEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int sender,
      String? content,
      DateTime timestamp,
      String? email,
      bool isread});
}

/// @nodoc
class __$$AnnouncementWithSenderEmailImplCopyWithImpl<$Res>
    extends _$AnnouncementWithSenderEmailCopyWithImpl<$Res,
        _$AnnouncementWithSenderEmailImpl>
    implements _$$AnnouncementWithSenderEmailImplCopyWith<$Res> {
  __$$AnnouncementWithSenderEmailImplCopyWithImpl(
      _$AnnouncementWithSenderEmailImpl _value,
      $Res Function(_$AnnouncementWithSenderEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? content = freezed,
    Object? timestamp = null,
    Object? email = freezed,
    Object? isread = null,
  }) {
    return _then(_$AnnouncementWithSenderEmailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isread: null == isread
          ? _value.isread
          : isread // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementWithSenderEmailImpl
    implements _AnnouncementWithSenderEmail {
  const _$AnnouncementWithSenderEmailImpl(
      {required this.id,
      required this.sender,
      required this.content,
      required this.timestamp,
      required this.email,
      required this.isread});

  factory _$AnnouncementWithSenderEmailImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnnouncementWithSenderEmailImplFromJson(json);

  @override
  final int id;
  @override
  final int sender;
  @override
  final String? content;
  @override
  final DateTime timestamp;
  @override
  final String? email;
  @override
  final bool isread;

  @override
  String toString() {
    return 'AnnouncementWithSenderEmail(id: $id, sender: $sender, content: $content, timestamp: $timestamp, email: $email, isread: $isread)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementWithSenderEmailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isread, isread) || other.isread == isread));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sender, content, timestamp, email, isread);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementWithSenderEmailImplCopyWith<_$AnnouncementWithSenderEmailImpl>
      get copyWith => __$$AnnouncementWithSenderEmailImplCopyWithImpl<
          _$AnnouncementWithSenderEmailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementWithSenderEmailImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementWithSenderEmail
    implements AnnouncementWithSenderEmail {
  const factory _AnnouncementWithSenderEmail(
      {required final int id,
      required final int sender,
      required final String? content,
      required final DateTime timestamp,
      required final String? email,
      required final bool isread}) = _$AnnouncementWithSenderEmailImpl;

  factory _AnnouncementWithSenderEmail.fromJson(Map<String, dynamic> json) =
      _$AnnouncementWithSenderEmailImpl.fromJson;

  @override
  int get id;
  @override
  int get sender;
  @override
  String? get content;
  @override
  DateTime get timestamp;
  @override
  String? get email;
  @override
  bool get isread;
  @override
  @JsonKey(ignore: true)
  _$$AnnouncementWithSenderEmailImplCopyWith<_$AnnouncementWithSenderEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
