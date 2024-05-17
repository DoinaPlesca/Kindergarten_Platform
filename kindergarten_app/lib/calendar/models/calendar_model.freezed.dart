// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsertEventResult _$InsertEventResultFromJson(Map<String, dynamic> json) {
  return _InsertEventResult.fromJson(json);
}

/// @nodoc
mixin _$InsertEventResult {
  int get eventid => throw _privateConstructorUsedError;
  DateTime get eventdate => throw _privateConstructorUsedError;
  String? get eventdescription => throw _privateConstructorUsedError;
  String? get eventtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsertEventResultCopyWith<InsertEventResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertEventResultCopyWith<$Res> {
  factory $InsertEventResultCopyWith(
          InsertEventResult value, $Res Function(InsertEventResult) then) =
      _$InsertEventResultCopyWithImpl<$Res, InsertEventResult>;
  @useResult
  $Res call(
      {int eventid,
      DateTime eventdate,
      String? eventdescription,
      String? eventtitle});
}

/// @nodoc
class _$InsertEventResultCopyWithImpl<$Res, $Val extends InsertEventResult>
    implements $InsertEventResultCopyWith<$Res> {
  _$InsertEventResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventid = null,
    Object? eventdate = null,
    Object? eventdescription = freezed,
    Object? eventtitle = freezed,
  }) {
    return _then(_value.copyWith(
      eventid: null == eventid
          ? _value.eventid
          : eventid // ignore: cast_nullable_to_non_nullable
              as int,
      eventdate: null == eventdate
          ? _value.eventdate
          : eventdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventdescription: freezed == eventdescription
          ? _value.eventdescription
          : eventdescription // ignore: cast_nullable_to_non_nullable
              as String?,
      eventtitle: freezed == eventtitle
          ? _value.eventtitle
          : eventtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsertEventResultImplCopyWith<$Res>
    implements $InsertEventResultCopyWith<$Res> {
  factory _$$InsertEventResultImplCopyWith(_$InsertEventResultImpl value,
          $Res Function(_$InsertEventResultImpl) then) =
      __$$InsertEventResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int eventid,
      DateTime eventdate,
      String? eventdescription,
      String? eventtitle});
}

/// @nodoc
class __$$InsertEventResultImplCopyWithImpl<$Res>
    extends _$InsertEventResultCopyWithImpl<$Res, _$InsertEventResultImpl>
    implements _$$InsertEventResultImplCopyWith<$Res> {
  __$$InsertEventResultImplCopyWithImpl(_$InsertEventResultImpl _value,
      $Res Function(_$InsertEventResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventid = null,
    Object? eventdate = null,
    Object? eventdescription = freezed,
    Object? eventtitle = freezed,
  }) {
    return _then(_$InsertEventResultImpl(
      eventid: null == eventid
          ? _value.eventid
          : eventid // ignore: cast_nullable_to_non_nullable
              as int,
      eventdate: null == eventdate
          ? _value.eventdate
          : eventdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventdescription: freezed == eventdescription
          ? _value.eventdescription
          : eventdescription // ignore: cast_nullable_to_non_nullable
              as String?,
      eventtitle: freezed == eventtitle
          ? _value.eventtitle
          : eventtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsertEventResultImpl implements _InsertEventResult {
  const _$InsertEventResultImpl(
      {required this.eventid,
      required this.eventdate,
      required this.eventdescription,
      required this.eventtitle});

  factory _$InsertEventResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsertEventResultImplFromJson(json);

  @override
  final int eventid;
  @override
  final DateTime eventdate;
  @override
  final String? eventdescription;
  @override
  final String? eventtitle;

  @override
  String toString() {
    return 'InsertEventResult(eventid: $eventid, eventdate: $eventdate, eventdescription: $eventdescription, eventtitle: $eventtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertEventResultImpl &&
            (identical(other.eventid, eventid) || other.eventid == eventid) &&
            (identical(other.eventdate, eventdate) ||
                other.eventdate == eventdate) &&
            (identical(other.eventdescription, eventdescription) ||
                other.eventdescription == eventdescription) &&
            (identical(other.eventtitle, eventtitle) ||
                other.eventtitle == eventtitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, eventid, eventdate, eventdescription, eventtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertEventResultImplCopyWith<_$InsertEventResultImpl> get copyWith =>
      __$$InsertEventResultImplCopyWithImpl<_$InsertEventResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsertEventResultImplToJson(
      this,
    );
  }
}

abstract class _InsertEventResult implements InsertEventResult {
  const factory _InsertEventResult(
      {required final int eventid,
      required final DateTime eventdate,
      required final String? eventdescription,
      required final String? eventtitle}) = _$InsertEventResultImpl;

  factory _InsertEventResult.fromJson(Map<String, dynamic> json) =
      _$InsertEventResultImpl.fromJson;

  @override
  int get eventid;
  @override
  DateTime get eventdate;
  @override
  String? get eventdescription;
  @override
  String? get eventtitle;
  @override
  @JsonKey(ignore: true)
  _$$InsertEventResultImplCopyWith<_$InsertEventResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
