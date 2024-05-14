// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  bool get authenticated => throw _privateConstructorUsedError;
  String? get headsUp => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get jwt => throw _privateConstructorUsedError;
  List<dynamic> get Children => throw _privateConstructorUsedError;
  List<AnnouncementWithSenderEmail> get UnreadAnnouncements =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool authenticated,
      String? headsUp,
      String? name,
      String? jwt,
      List<dynamic> Children,
      List<AnnouncementWithSenderEmail> UnreadAnnouncements});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticated = null,
    Object? headsUp = freezed,
    Object? name = freezed,
    Object? jwt = freezed,
    Object? Children = null,
    Object? UnreadAnnouncements = null,
  }) {
    return _then(_value.copyWith(
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      headsUp: freezed == headsUp
          ? _value.headsUp
          : headsUp // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      jwt: freezed == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
      Children: null == Children
          ? _value.Children
          : Children // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      UnreadAnnouncements: null == UnreadAnnouncements
          ? _value.UnreadAnnouncements
          : UnreadAnnouncements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWithSenderEmail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool authenticated,
      String? headsUp,
      String? name,
      String? jwt,
      List<dynamic> Children,
      List<AnnouncementWithSenderEmail> UnreadAnnouncements});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticated = null,
    Object? headsUp = freezed,
    Object? name = freezed,
    Object? jwt = freezed,
    Object? Children = null,
    Object? UnreadAnnouncements = null,
  }) {
    return _then(_$LoginStateImpl(
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      headsUp: freezed == headsUp
          ? _value.headsUp
          : headsUp // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      jwt: freezed == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
      Children: null == Children
          ? _value._Children
          : Children // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      UnreadAnnouncements: null == UnreadAnnouncements
          ? _value._UnreadAnnouncements
          : UnreadAnnouncements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementWithSenderEmail>,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.authenticated,
      this.headsUp,
      this.name,
      this.jwt,
      final List<dynamic> Children = const [],
      final List<AnnouncementWithSenderEmail> UnreadAnnouncements = const []})
      : _Children = Children,
        _UnreadAnnouncements = UnreadAnnouncements;

  @override
  final bool authenticated;
  @override
  final String? headsUp;
  @override
  final String? name;
  @override
  final String? jwt;
  final List<dynamic> _Children;
  @override
  @JsonKey()
  List<dynamic> get Children {
    if (_Children is EqualUnmodifiableListView) return _Children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Children);
  }

  final List<AnnouncementWithSenderEmail> _UnreadAnnouncements;
  @override
  @JsonKey()
  List<AnnouncementWithSenderEmail> get UnreadAnnouncements {
    if (_UnreadAnnouncements is EqualUnmodifiableListView)
      return _UnreadAnnouncements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_UnreadAnnouncements);
  }

  @override
  String toString() {
    return 'LoginState(authenticated: $authenticated, headsUp: $headsUp, name: $name, jwt: $jwt, Children: $Children, UnreadAnnouncements: $UnreadAnnouncements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated) &&
            (identical(other.headsUp, headsUp) || other.headsUp == headsUp) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            const DeepCollectionEquality().equals(other._Children, _Children) &&
            const DeepCollectionEquality()
                .equals(other._UnreadAnnouncements, _UnreadAnnouncements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authenticated,
      headsUp,
      name,
      jwt,
      const DeepCollectionEquality().hash(_Children),
      const DeepCollectionEquality().hash(_UnreadAnnouncements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
          {required final bool authenticated,
          final String? headsUp,
          final String? name,
          final String? jwt,
          final List<dynamic> Children,
          final List<AnnouncementWithSenderEmail> UnreadAnnouncements}) =
      _$LoginStateImpl;

  @override
  bool get authenticated;
  @override
  String? get headsUp;
  @override
  String? get name;
  @override
  String? get jwt;
  @override
  List<dynamic> get Children;
  @override
  List<AnnouncementWithSenderEmail> get UnreadAnnouncements;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
