// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToCreateNewCalendarEvent
    _$ClientWantsToCreateNewCalendarEventFromJson(Map<String, dynamic> json) {
  return _ClientWantsToCreateNewCalendarEvent.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToCreateNewCalendarEvent {
  String get eventType => throw _privateConstructorUsedError;
  DateTime get eventdate => throw _privateConstructorUsedError;
  String get eventdescription => throw _privateConstructorUsedError;
  String get eventtitle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToCreateNewCalendarEventCopyWith<
          ClientWantsToCreateNewCalendarEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToCreateNewCalendarEventCopyWith<$Res> {
  factory $ClientWantsToCreateNewCalendarEventCopyWith(
          ClientWantsToCreateNewCalendarEvent value,
          $Res Function(ClientWantsToCreateNewCalendarEvent) then) =
      _$ClientWantsToCreateNewCalendarEventCopyWithImpl<$Res,
          ClientWantsToCreateNewCalendarEvent>;
  @useResult
  $Res call(
      {String eventType,
      DateTime eventdate,
      String eventdescription,
      String eventtitle});
}

/// @nodoc
class _$ClientWantsToCreateNewCalendarEventCopyWithImpl<$Res,
        $Val extends ClientWantsToCreateNewCalendarEvent>
    implements $ClientWantsToCreateNewCalendarEventCopyWith<$Res> {
  _$ClientWantsToCreateNewCalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? eventdate = null,
    Object? eventdescription = null,
    Object? eventtitle = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      eventdate: null == eventdate
          ? _value.eventdate
          : eventdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventdescription: null == eventdescription
          ? _value.eventdescription
          : eventdescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventtitle: null == eventtitle
          ? _value.eventtitle
          : eventtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToCreateNewCalendarEventImplCopyWith<$Res>
    implements $ClientWantsToCreateNewCalendarEventCopyWith<$Res> {
  factory _$$ClientWantsToCreateNewCalendarEventImplCopyWith(
          _$ClientWantsToCreateNewCalendarEventImpl value,
          $Res Function(_$ClientWantsToCreateNewCalendarEventImpl) then) =
      __$$ClientWantsToCreateNewCalendarEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      DateTime eventdate,
      String eventdescription,
      String eventtitle});
}

/// @nodoc
class __$$ClientWantsToCreateNewCalendarEventImplCopyWithImpl<$Res>
    extends _$ClientWantsToCreateNewCalendarEventCopyWithImpl<$Res,
        _$ClientWantsToCreateNewCalendarEventImpl>
    implements _$$ClientWantsToCreateNewCalendarEventImplCopyWith<$Res> {
  __$$ClientWantsToCreateNewCalendarEventImplCopyWithImpl(
      _$ClientWantsToCreateNewCalendarEventImpl _value,
      $Res Function(_$ClientWantsToCreateNewCalendarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? eventdate = null,
    Object? eventdescription = null,
    Object? eventtitle = null,
  }) {
    return _then(_$ClientWantsToCreateNewCalendarEventImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      eventdate: null == eventdate
          ? _value.eventdate
          : eventdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventdescription: null == eventdescription
          ? _value.eventdescription
          : eventdescription // ignore: cast_nullable_to_non_nullable
              as String,
      eventtitle: null == eventtitle
          ? _value.eventtitle
          : eventtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToCreateNewCalendarEventImpl
    implements _ClientWantsToCreateNewCalendarEvent {
  const _$ClientWantsToCreateNewCalendarEventImpl(
      {required this.eventType,
      required this.eventdate,
      required this.eventdescription,
      required this.eventtitle});

  factory _$ClientWantsToCreateNewCalendarEventImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToCreateNewCalendarEventImplFromJson(json);

  @override
  final String eventType;
  @override
  final DateTime eventdate;
  @override
  final String eventdescription;
  @override
  final String eventtitle;

  @override
  String toString() {
    return 'ClientWantsToCreateNewCalendarEvent(eventType: $eventType, eventdate: $eventdate, eventdescription: $eventdescription, eventtitle: $eventtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToCreateNewCalendarEventImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
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
      runtimeType, eventType, eventdate, eventdescription, eventtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToCreateNewCalendarEventImplCopyWith<
          _$ClientWantsToCreateNewCalendarEventImpl>
      get copyWith => __$$ClientWantsToCreateNewCalendarEventImplCopyWithImpl<
          _$ClientWantsToCreateNewCalendarEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToCreateNewCalendarEventImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToCreateNewCalendarEvent
    implements ClientWantsToCreateNewCalendarEvent {
  const factory _ClientWantsToCreateNewCalendarEvent(
          {required final String eventType,
          required final DateTime eventdate,
          required final String eventdescription,
          required final String eventtitle}) =
      _$ClientWantsToCreateNewCalendarEventImpl;

  factory _ClientWantsToCreateNewCalendarEvent.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToCreateNewCalendarEventImpl.fromJson;

  @override
  String get eventType;
  @override
  DateTime get eventdate;
  @override
  String get eventdescription;
  @override
  String get eventtitle;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToCreateNewCalendarEventImplCopyWith<
          _$ClientWantsToCreateNewCalendarEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToGetEventsByDateRange _$ClientWantsToGetEventsByDateRangeFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToGetEventsByDateRange.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToGetEventsByDateRange {
  String get eventType => throw _privateConstructorUsedError;
  DateTime get StartDate => throw _privateConstructorUsedError;
  DateTime get EndDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToGetEventsByDateRangeCopyWith<ClientWantsToGetEventsByDateRange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToGetEventsByDateRangeCopyWith<$Res> {
  factory $ClientWantsToGetEventsByDateRangeCopyWith(
          ClientWantsToGetEventsByDateRange value,
          $Res Function(ClientWantsToGetEventsByDateRange) then) =
      _$ClientWantsToGetEventsByDateRangeCopyWithImpl<$Res,
          ClientWantsToGetEventsByDateRange>;
  @useResult
  $Res call({String eventType, DateTime StartDate, DateTime EndDate});
}

/// @nodoc
class _$ClientWantsToGetEventsByDateRangeCopyWithImpl<$Res,
        $Val extends ClientWantsToGetEventsByDateRange>
    implements $ClientWantsToGetEventsByDateRangeCopyWith<$Res> {
  _$ClientWantsToGetEventsByDateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? StartDate = null,
    Object? EndDate = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      StartDate: null == StartDate
          ? _value.StartDate
          : StartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      EndDate: null == EndDate
          ? _value.EndDate
          : EndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToGetEventsByDateRangeImplCopyWith<$Res>
    implements $ClientWantsToGetEventsByDateRangeCopyWith<$Res> {
  factory _$$ClientWantsToGetEventsByDateRangeImplCopyWith(
          _$ClientWantsToGetEventsByDateRangeImpl value,
          $Res Function(_$ClientWantsToGetEventsByDateRangeImpl) then) =
      __$$ClientWantsToGetEventsByDateRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, DateTime StartDate, DateTime EndDate});
}

/// @nodoc
class __$$ClientWantsToGetEventsByDateRangeImplCopyWithImpl<$Res>
    extends _$ClientWantsToGetEventsByDateRangeCopyWithImpl<$Res,
        _$ClientWantsToGetEventsByDateRangeImpl>
    implements _$$ClientWantsToGetEventsByDateRangeImplCopyWith<$Res> {
  __$$ClientWantsToGetEventsByDateRangeImplCopyWithImpl(
      _$ClientWantsToGetEventsByDateRangeImpl _value,
      $Res Function(_$ClientWantsToGetEventsByDateRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? StartDate = null,
    Object? EndDate = null,
  }) {
    return _then(_$ClientWantsToGetEventsByDateRangeImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      StartDate: null == StartDate
          ? _value.StartDate
          : StartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      EndDate: null == EndDate
          ? _value.EndDate
          : EndDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToGetEventsByDateRangeImpl
    implements _ClientWantsToGetEventsByDateRange {
  const _$ClientWantsToGetEventsByDateRangeImpl(
      {required this.eventType,
      required this.StartDate,
      required this.EndDate});

  factory _$ClientWantsToGetEventsByDateRangeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToGetEventsByDateRangeImplFromJson(json);

  @override
  final String eventType;
  @override
  final DateTime StartDate;
  @override
  final DateTime EndDate;

  @override
  String toString() {
    return 'ClientWantsToGetEventsByDateRange(eventType: $eventType, StartDate: $StartDate, EndDate: $EndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToGetEventsByDateRangeImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.StartDate, StartDate) ||
                other.StartDate == StartDate) &&
            (identical(other.EndDate, EndDate) || other.EndDate == EndDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, StartDate, EndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToGetEventsByDateRangeImplCopyWith<
          _$ClientWantsToGetEventsByDateRangeImpl>
      get copyWith => __$$ClientWantsToGetEventsByDateRangeImplCopyWithImpl<
          _$ClientWantsToGetEventsByDateRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToGetEventsByDateRangeImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToGetEventsByDateRange
    implements ClientWantsToGetEventsByDateRange {
  const factory _ClientWantsToGetEventsByDateRange(
          {required final String eventType,
          required final DateTime StartDate,
          required final DateTime EndDate}) =
      _$ClientWantsToGetEventsByDateRangeImpl;

  factory _ClientWantsToGetEventsByDateRange.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToGetEventsByDateRangeImpl.fromJson;

  @override
  String get eventType;
  @override
  DateTime get StartDate;
  @override
  DateTime get EndDate;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToGetEventsByDateRangeImplCopyWith<
          _$ClientWantsToGetEventsByDateRangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerCreateCalendarEvent _$ServerCreateCalendarEventFromJson(
    Map<String, dynamic> json) {
  return _ServerCreateCalendarEvent.fromJson(json);
}

/// @nodoc
mixin _$ServerCreateCalendarEvent {
  String get eventType => throw _privateConstructorUsedError;
  InsertEventResult get newEvent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerCreateCalendarEventCopyWith<ServerCreateCalendarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCreateCalendarEventCopyWith<$Res> {
  factory $ServerCreateCalendarEventCopyWith(ServerCreateCalendarEvent value,
          $Res Function(ServerCreateCalendarEvent) then) =
      _$ServerCreateCalendarEventCopyWithImpl<$Res, ServerCreateCalendarEvent>;
  @useResult
  $Res call({String eventType, InsertEventResult newEvent});

  $InsertEventResultCopyWith<$Res> get newEvent;
}

/// @nodoc
class _$ServerCreateCalendarEventCopyWithImpl<$Res,
        $Val extends ServerCreateCalendarEvent>
    implements $ServerCreateCalendarEventCopyWith<$Res> {
  _$ServerCreateCalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? newEvent = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      newEvent: null == newEvent
          ? _value.newEvent
          : newEvent // ignore: cast_nullable_to_non_nullable
              as InsertEventResult,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InsertEventResultCopyWith<$Res> get newEvent {
    return $InsertEventResultCopyWith<$Res>(_value.newEvent, (value) {
      return _then(_value.copyWith(newEvent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerCreateCalendarEventImplCopyWith<$Res>
    implements $ServerCreateCalendarEventCopyWith<$Res> {
  factory _$$ServerCreateCalendarEventImplCopyWith(
          _$ServerCreateCalendarEventImpl value,
          $Res Function(_$ServerCreateCalendarEventImpl) then) =
      __$$ServerCreateCalendarEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, InsertEventResult newEvent});

  @override
  $InsertEventResultCopyWith<$Res> get newEvent;
}

/// @nodoc
class __$$ServerCreateCalendarEventImplCopyWithImpl<$Res>
    extends _$ServerCreateCalendarEventCopyWithImpl<$Res,
        _$ServerCreateCalendarEventImpl>
    implements _$$ServerCreateCalendarEventImplCopyWith<$Res> {
  __$$ServerCreateCalendarEventImplCopyWithImpl(
      _$ServerCreateCalendarEventImpl _value,
      $Res Function(_$ServerCreateCalendarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? newEvent = null,
  }) {
    return _then(_$ServerCreateCalendarEventImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      newEvent: null == newEvent
          ? _value.newEvent
          : newEvent // ignore: cast_nullable_to_non_nullable
              as InsertEventResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerCreateCalendarEventImpl implements _ServerCreateCalendarEvent {
  const _$ServerCreateCalendarEventImpl(
      {required this.eventType, required this.newEvent});

  factory _$ServerCreateCalendarEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerCreateCalendarEventImplFromJson(json);

  @override
  final String eventType;
  @override
  final InsertEventResult newEvent;

  @override
  String toString() {
    return 'ServerCreateCalendarEvent(eventType: $eventType, newEvent: $newEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerCreateCalendarEventImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.newEvent, newEvent) ||
                other.newEvent == newEvent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, newEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerCreateCalendarEventImplCopyWith<_$ServerCreateCalendarEventImpl>
      get copyWith => __$$ServerCreateCalendarEventImplCopyWithImpl<
          _$ServerCreateCalendarEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerCreateCalendarEventImplToJson(
      this,
    );
  }
}

abstract class _ServerCreateCalendarEvent implements ServerCreateCalendarEvent {
  const factory _ServerCreateCalendarEvent(
          {required final String eventType,
          required final InsertEventResult newEvent}) =
      _$ServerCreateCalendarEventImpl;

  factory _ServerCreateCalendarEvent.fromJson(Map<String, dynamic> json) =
      _$ServerCreateCalendarEventImpl.fromJson;

  @override
  String get eventType;
  @override
  InsertEventResult get newEvent;
  @override
  @JsonKey(ignore: true)
  _$$ServerCreateCalendarEventImplCopyWith<_$ServerCreateCalendarEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerGetEventsByDateRange _$ServerGetEventsByDateRangeFromJson(
    Map<String, dynamic> json) {
  return _ServerGetEventsByDateRange.fromJson(json);
}

/// @nodoc
mixin _$ServerGetEventsByDateRange {
  String get eventType => throw _privateConstructorUsedError;
  List<InsertEventResult> get eventsByDataRange =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerGetEventsByDateRangeCopyWith<ServerGetEventsByDateRange>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerGetEventsByDateRangeCopyWith<$Res> {
  factory $ServerGetEventsByDateRangeCopyWith(ServerGetEventsByDateRange value,
          $Res Function(ServerGetEventsByDateRange) then) =
      _$ServerGetEventsByDateRangeCopyWithImpl<$Res,
          ServerGetEventsByDateRange>;
  @useResult
  $Res call({String eventType, List<InsertEventResult> eventsByDataRange});
}

/// @nodoc
class _$ServerGetEventsByDateRangeCopyWithImpl<$Res,
        $Val extends ServerGetEventsByDateRange>
    implements $ServerGetEventsByDateRangeCopyWith<$Res> {
  _$ServerGetEventsByDateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? eventsByDataRange = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      eventsByDataRange: null == eventsByDataRange
          ? _value.eventsByDataRange
          : eventsByDataRange // ignore: cast_nullable_to_non_nullable
              as List<InsertEventResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerGetEventsByDateRangeImplCopyWith<$Res>
    implements $ServerGetEventsByDateRangeCopyWith<$Res> {
  factory _$$ServerGetEventsByDateRangeImplCopyWith(
          _$ServerGetEventsByDateRangeImpl value,
          $Res Function(_$ServerGetEventsByDateRangeImpl) then) =
      __$$ServerGetEventsByDateRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, List<InsertEventResult> eventsByDataRange});
}

/// @nodoc
class __$$ServerGetEventsByDateRangeImplCopyWithImpl<$Res>
    extends _$ServerGetEventsByDateRangeCopyWithImpl<$Res,
        _$ServerGetEventsByDateRangeImpl>
    implements _$$ServerGetEventsByDateRangeImplCopyWith<$Res> {
  __$$ServerGetEventsByDateRangeImplCopyWithImpl(
      _$ServerGetEventsByDateRangeImpl _value,
      $Res Function(_$ServerGetEventsByDateRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? eventsByDataRange = null,
  }) {
    return _then(_$ServerGetEventsByDateRangeImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      eventsByDataRange: null == eventsByDataRange
          ? _value._eventsByDataRange
          : eventsByDataRange // ignore: cast_nullable_to_non_nullable
              as List<InsertEventResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerGetEventsByDateRangeImpl implements _ServerGetEventsByDateRange {
  const _$ServerGetEventsByDateRangeImpl(
      {required this.eventType,
      final List<InsertEventResult> eventsByDataRange = const []})
      : _eventsByDataRange = eventsByDataRange;

  factory _$ServerGetEventsByDateRangeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerGetEventsByDateRangeImplFromJson(json);

  @override
  final String eventType;
  final List<InsertEventResult> _eventsByDataRange;
  @override
  @JsonKey()
  List<InsertEventResult> get eventsByDataRange {
    if (_eventsByDataRange is EqualUnmodifiableListView)
      return _eventsByDataRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsByDataRange);
  }

  @override
  String toString() {
    return 'ServerGetEventsByDateRange(eventType: $eventType, eventsByDataRange: $eventsByDataRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerGetEventsByDateRangeImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._eventsByDataRange, _eventsByDataRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_eventsByDataRange));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerGetEventsByDateRangeImplCopyWith<_$ServerGetEventsByDateRangeImpl>
      get copyWith => __$$ServerGetEventsByDateRangeImplCopyWithImpl<
          _$ServerGetEventsByDateRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerGetEventsByDateRangeImplToJson(
      this,
    );
  }
}

abstract class _ServerGetEventsByDateRange
    implements ServerGetEventsByDateRange {
  const factory _ServerGetEventsByDateRange(
          {required final String eventType,
          final List<InsertEventResult> eventsByDataRange}) =
      _$ServerGetEventsByDateRangeImpl;

  factory _ServerGetEventsByDateRange.fromJson(Map<String, dynamic> json) =
      _$ServerGetEventsByDateRangeImpl.fromJson;

  @override
  String get eventType;
  @override
  List<InsertEventResult> get eventsByDataRange;
  @override
  @JsonKey(ignore: true)
  _$$ServerGetEventsByDateRangeImplCopyWith<_$ServerGetEventsByDateRangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
