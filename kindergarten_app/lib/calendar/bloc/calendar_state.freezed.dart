// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarState {
  List<InsertEventResult> get eventsByDataRange =>
      throw _privateConstructorUsedError;
  List<InsertEventResult> get events => throw _privateConstructorUsedError;
  bool get showNotificationDot => throw _privateConstructorUsedError;
  Map<DateTime, List<InsertEventResult>> get eventsGroupedByDate =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {List<InsertEventResult> eventsByDataRange,
      List<InsertEventResult> events,
      bool showNotificationDot,
      Map<DateTime, List<InsertEventResult>> eventsGroupedByDate});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsByDataRange = null,
    Object? events = null,
    Object? showNotificationDot = null,
    Object? eventsGroupedByDate = null,
  }) {
    return _then(_value.copyWith(
      eventsByDataRange: null == eventsByDataRange
          ? _value.eventsByDataRange
          : eventsByDataRange // ignore: cast_nullable_to_non_nullable
              as List<InsertEventResult>,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<InsertEventResult>,
      showNotificationDot: null == showNotificationDot
          ? _value.showNotificationDot
          : showNotificationDot // ignore: cast_nullable_to_non_nullable
              as bool,
      eventsGroupedByDate: null == eventsGroupedByDate
          ? _value.eventsGroupedByDate
          : eventsGroupedByDate // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<InsertEventResult>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<InsertEventResult> eventsByDataRange,
      List<InsertEventResult> events,
      bool showNotificationDot,
      Map<DateTime, List<InsertEventResult>> eventsGroupedByDate});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventsByDataRange = null,
    Object? events = null,
    Object? showNotificationDot = null,
    Object? eventsGroupedByDate = null,
  }) {
    return _then(_$CalendarStateImpl(
      eventsByDataRange: null == eventsByDataRange
          ? _value._eventsByDataRange
          : eventsByDataRange // ignore: cast_nullable_to_non_nullable
              as List<InsertEventResult>,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<InsertEventResult>,
      showNotificationDot: null == showNotificationDot
          ? _value.showNotificationDot
          : showNotificationDot // ignore: cast_nullable_to_non_nullable
              as bool,
      eventsGroupedByDate: null == eventsGroupedByDate
          ? _value._eventsGroupedByDate
          : eventsGroupedByDate // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<InsertEventResult>>,
    ));
  }
}

/// @nodoc

class _$CalendarStateImpl implements _CalendarState {
  const _$CalendarStateImpl(
      {final List<InsertEventResult> eventsByDataRange = const [],
      final List<InsertEventResult> events = const [],
      required this.showNotificationDot,
      final Map<DateTime, List<InsertEventResult>> eventsGroupedByDate =
          const {}})
      : _eventsByDataRange = eventsByDataRange,
        _events = events,
        _eventsGroupedByDate = eventsGroupedByDate;

  final List<InsertEventResult> _eventsByDataRange;
  @override
  @JsonKey()
  List<InsertEventResult> get eventsByDataRange {
    if (_eventsByDataRange is EqualUnmodifiableListView)
      return _eventsByDataRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventsByDataRange);
  }

  final List<InsertEventResult> _events;
  @override
  @JsonKey()
  List<InsertEventResult> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final bool showNotificationDot;
  final Map<DateTime, List<InsertEventResult>> _eventsGroupedByDate;
  @override
  @JsonKey()
  Map<DateTime, List<InsertEventResult>> get eventsGroupedByDate {
    if (_eventsGroupedByDate is EqualUnmodifiableMapView)
      return _eventsGroupedByDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_eventsGroupedByDate);
  }

  @override
  String toString() {
    return 'CalendarState(eventsByDataRange: $eventsByDataRange, events: $events, showNotificationDot: $showNotificationDot, eventsGroupedByDate: $eventsGroupedByDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateImpl &&
            const DeepCollectionEquality()
                .equals(other._eventsByDataRange, _eventsByDataRange) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.showNotificationDot, showNotificationDot) ||
                other.showNotificationDot == showNotificationDot) &&
            const DeepCollectionEquality()
                .equals(other._eventsGroupedByDate, _eventsGroupedByDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_eventsByDataRange),
      const DeepCollectionEquality().hash(_events),
      showNotificationDot,
      const DeepCollectionEquality().hash(_eventsGroupedByDate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
          {final List<InsertEventResult> eventsByDataRange,
          final List<InsertEventResult> events,
          required final bool showNotificationDot,
          final Map<DateTime, List<InsertEventResult>> eventsGroupedByDate}) =
      _$CalendarStateImpl;

  @override
  List<InsertEventResult> get eventsByDataRange;
  @override
  List<InsertEventResult> get events;
  @override
  bool get showNotificationDot;
  @override
  Map<DateTime, List<InsertEventResult>> get eventsGroupedByDate;
  @override
  @JsonKey(ignore: true)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
