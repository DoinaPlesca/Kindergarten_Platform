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

ClientWantsToLogout _$ClientWantsToLogoutFromJson(Map<String, dynamic> json) {
  return _ClientWantsToLogout.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogout {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLogoutCopyWith<ClientWantsToLogout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLogoutCopyWith<$Res> {
  factory $ClientWantsToLogoutCopyWith(
          ClientWantsToLogout value, $Res Function(ClientWantsToLogout) then) =
      _$ClientWantsToLogoutCopyWithImpl<$Res, ClientWantsToLogout>;
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class _$ClientWantsToLogoutCopyWithImpl<$Res, $Val extends ClientWantsToLogout>
    implements $ClientWantsToLogoutCopyWith<$Res> {
  _$ClientWantsToLogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToLogoutImplCopyWith<$Res>
    implements $ClientWantsToLogoutCopyWith<$Res> {
  factory _$$ClientWantsToLogoutImplCopyWith(_$ClientWantsToLogoutImpl value,
          $Res Function(_$ClientWantsToLogoutImpl) then) =
      __$$ClientWantsToLogoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class __$$ClientWantsToLogoutImplCopyWithImpl<$Res>
    extends _$ClientWantsToLogoutCopyWithImpl<$Res, _$ClientWantsToLogoutImpl>
    implements _$$ClientWantsToLogoutImplCopyWith<$Res> {
  __$$ClientWantsToLogoutImplCopyWithImpl(_$ClientWantsToLogoutImpl _value,
      $Res Function(_$ClientWantsToLogoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_$ClientWantsToLogoutImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLogoutImpl implements _ClientWantsToLogout {
  const _$ClientWantsToLogoutImpl({required this.eventType, required this.jwt});

  factory _$ClientWantsToLogoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogoutImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;

  @override
  String toString() {
    return 'ClientWantsToLogout(eventType: $eventType, jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogoutImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogoutImplCopyWith<_$ClientWantsToLogoutImpl> get copyWith =>
      __$$ClientWantsToLogoutImplCopyWithImpl<_$ClientWantsToLogoutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLogoutImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLogout implements ClientWantsToLogout {
  const factory _ClientWantsToLogout(
      {required final String eventType,
      required final String jwt}) = _$ClientWantsToLogoutImpl;

  factory _ClientWantsToLogout.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogoutImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLogoutImplCopyWith<_$ClientWantsToLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClientWantsToAuthenticateWithJwt _$ClientWantsToAuthenticateWithJwtFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToAuthenticateWithJwt.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToAuthenticateWithJwt {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToAuthenticateWithJwtCopyWith<ClientWantsToAuthenticateWithJwt>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToAuthenticateWithJwtCopyWith<$Res> {
  factory $ClientWantsToAuthenticateWithJwtCopyWith(
          ClientWantsToAuthenticateWithJwt value,
          $Res Function(ClientWantsToAuthenticateWithJwt) then) =
      _$ClientWantsToAuthenticateWithJwtCopyWithImpl<$Res,
          ClientWantsToAuthenticateWithJwt>;
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class _$ClientWantsToAuthenticateWithJwtCopyWithImpl<$Res,
        $Val extends ClientWantsToAuthenticateWithJwt>
    implements $ClientWantsToAuthenticateWithJwtCopyWith<$Res> {
  _$ClientWantsToAuthenticateWithJwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToAuthenticateWithJwtImplCopyWith<$Res>
    implements $ClientWantsToAuthenticateWithJwtCopyWith<$Res> {
  factory _$$ClientWantsToAuthenticateWithJwtImplCopyWith(
          _$ClientWantsToAuthenticateWithJwtImpl value,
          $Res Function(_$ClientWantsToAuthenticateWithJwtImpl) then) =
      __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl<$Res>
    extends _$ClientWantsToAuthenticateWithJwtCopyWithImpl<$Res,
        _$ClientWantsToAuthenticateWithJwtImpl>
    implements _$$ClientWantsToAuthenticateWithJwtImplCopyWith<$Res> {
  __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl(
      _$ClientWantsToAuthenticateWithJwtImpl _value,
      $Res Function(_$ClientWantsToAuthenticateWithJwtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_$ClientWantsToAuthenticateWithJwtImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToAuthenticateWithJwtImpl
    implements _ClientWantsToAuthenticateWithJwt {
  const _$ClientWantsToAuthenticateWithJwtImpl(
      {required this.eventType, required this.jwt});

  factory _$ClientWantsToAuthenticateWithJwtImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToAuthenticateWithJwtImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;

  @override
  String toString() {
    return 'ClientWantsToAuthenticateWithJwt(eventType: $eventType, jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToAuthenticateWithJwtImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToAuthenticateWithJwtImplCopyWith<
          _$ClientWantsToAuthenticateWithJwtImpl>
      get copyWith => __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl<
          _$ClientWantsToAuthenticateWithJwtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToAuthenticateWithJwtImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToAuthenticateWithJwt
    implements ClientWantsToAuthenticateWithJwt {
  const factory _ClientWantsToAuthenticateWithJwt(
      {required final String eventType,
      required final String jwt}) = _$ClientWantsToAuthenticateWithJwtImpl;

  factory _ClientWantsToAuthenticateWithJwt.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToAuthenticateWithJwtImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToAuthenticateWithJwtImplCopyWith<
          _$ClientWantsToAuthenticateWithJwtImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToSignIn _$ClientWantsToSignInFromJson(Map<String, dynamic> json) {
  return _ClientWantsToSignIn.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToSignIn {
  String get eventType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToSignInCopyWith<ClientWantsToSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToSignInCopyWith<$Res> {
  factory $ClientWantsToSignInCopyWith(
          ClientWantsToSignIn value, $Res Function(ClientWantsToSignIn) then) =
      _$ClientWantsToSignInCopyWithImpl<$Res, ClientWantsToSignIn>;
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class _$ClientWantsToSignInCopyWithImpl<$Res, $Val extends ClientWantsToSignIn>
    implements $ClientWantsToSignInCopyWith<$Res> {
  _$ClientWantsToSignInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToSignInImplCopyWith<$Res>
    implements $ClientWantsToSignInCopyWith<$Res> {
  factory _$$ClientWantsToSignInImplCopyWith(_$ClientWantsToSignInImpl value,
          $Res Function(_$ClientWantsToSignInImpl) then) =
      __$$ClientWantsToSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class __$$ClientWantsToSignInImplCopyWithImpl<$Res>
    extends _$ClientWantsToSignInCopyWithImpl<$Res, _$ClientWantsToSignInImpl>
    implements _$$ClientWantsToSignInImplCopyWith<$Res> {
  __$$ClientWantsToSignInImplCopyWithImpl(_$ClientWantsToSignInImpl _value,
      $Res Function(_$ClientWantsToSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ClientWantsToSignInImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToSignInImpl implements _ClientWantsToSignIn {
  const _$ClientWantsToSignInImpl(
      {required this.eventType, required this.email, required this.password});

  factory _$ClientWantsToSignInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToSignInImplFromJson(json);

  @override
  final String eventType;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ClientWantsToSignIn(eventType: $eventType, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToSignInImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToSignInImplCopyWith<_$ClientWantsToSignInImpl> get copyWith =>
      __$$ClientWantsToSignInImplCopyWithImpl<_$ClientWantsToSignInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToSignInImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToSignIn implements ClientWantsToSignIn {
  const factory _ClientWantsToSignIn(
      {required final String eventType,
      required final String email,
      required final String password}) = _$ClientWantsToSignInImpl;

  factory _ClientWantsToSignIn.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToSignInImpl.fromJson;

  @override
  String get eventType;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToSignInImplCopyWith<_$ClientWantsToSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerAuthenticatesUser _$ServerAuthenticatesUserFromJson(
    Map<String, dynamic> json) {
  return _ServerAuthenticatesUser.fromJson(json);
}

/// @nodoc
mixin _$ServerAuthenticatesUser {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isParent => throw _privateConstructorUsedError;
  bool get isTeacher => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<dynamic> get Children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAuthenticatesUserCopyWith<ServerAuthenticatesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAuthenticatesUserCopyWith<$Res> {
  factory $ServerAuthenticatesUserCopyWith(ServerAuthenticatesUser value,
          $Res Function(ServerAuthenticatesUser) then) =
      _$ServerAuthenticatesUserCopyWithImpl<$Res, ServerAuthenticatesUser>;
  @useResult
  $Res call(
      {String eventType,
      String jwt,
      String email,
      bool isParent,
      bool isTeacher,
      String name,
      List<dynamic> Children});
}

/// @nodoc
class _$ServerAuthenticatesUserCopyWithImpl<$Res,
        $Val extends ServerAuthenticatesUser>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  _$ServerAuthenticatesUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
    Object? email = null,
    Object? isParent = null,
    Object? isTeacher = null,
    Object? name = null,
    Object? Children = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isParent: null == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool,
      isTeacher: null == isTeacher
          ? _value.isTeacher
          : isTeacher // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      Children: null == Children
          ? _value.Children
          : Children // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerAuthenticatesUserImplCopyWith<$Res>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  factory _$$ServerAuthenticatesUserImplCopyWith(
          _$ServerAuthenticatesUserImpl value,
          $Res Function(_$ServerAuthenticatesUserImpl) then) =
      __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      String jwt,
      String email,
      bool isParent,
      bool isTeacher,
      String name,
      List<dynamic> Children});
}

/// @nodoc
class __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>
    extends _$ServerAuthenticatesUserCopyWithImpl<$Res,
        _$ServerAuthenticatesUserImpl>
    implements _$$ServerAuthenticatesUserImplCopyWith<$Res> {
  __$$ServerAuthenticatesUserImplCopyWithImpl(
      _$ServerAuthenticatesUserImpl _value,
      $Res Function(_$ServerAuthenticatesUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
    Object? email = null,
    Object? isParent = null,
    Object? isTeacher = null,
    Object? name = null,
    Object? Children = null,
  }) {
    return _then(_$ServerAuthenticatesUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isParent: null == isParent
          ? _value.isParent
          : isParent // ignore: cast_nullable_to_non_nullable
              as bool,
      isTeacher: null == isTeacher
          ? _value.isTeacher
          : isTeacher // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      Children: null == Children
          ? _value._Children
          : Children // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthenticatesUserImpl implements _ServerAuthenticatesUser {
  const _$ServerAuthenticatesUserImpl(
      {required this.eventType,
      required this.jwt,
      required this.email,
      required this.isParent,
      required this.isTeacher,
      required this.name,
      final List<dynamic> Children = const []})
      : _Children = Children;

  factory _$ServerAuthenticatesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthenticatesUserImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;
  @override
  final String email;
  @override
  final bool isParent;
  @override
  final bool isTeacher;
  @override
  final String name;
  final List<dynamic> _Children;
  @override
  @JsonKey()
  List<dynamic> get Children {
    if (_Children is EqualUnmodifiableListView) return _Children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Children);
  }

  @override
  String toString() {
    return 'ServerAuthenticatesUser(eventType: $eventType, jwt: $jwt, email: $email, isParent: $isParent, isTeacher: $isTeacher, name: $name, Children: $Children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthenticatesUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isParent, isParent) ||
                other.isParent == isParent) &&
            (identical(other.isTeacher, isTeacher) ||
                other.isTeacher == isTeacher) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._Children, _Children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt, email, isParent,
      isTeacher, name, const DeepCollectionEquality().hash(_Children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => __$$ServerAuthenticatesUserImplCopyWithImpl<
          _$ServerAuthenticatesUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthenticatesUserImplToJson(
      this,
    );
  }
}

abstract class _ServerAuthenticatesUser implements ServerAuthenticatesUser {
  const factory _ServerAuthenticatesUser(
      {required final String eventType,
      required final String jwt,
      required final String email,
      required final bool isParent,
      required final bool isTeacher,
      required final String name,
      final List<dynamic> Children}) = _$ServerAuthenticatesUserImpl;

  factory _ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =
      _$ServerAuthenticatesUserImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  String get email;
  @override
  bool get isParent;
  @override
  bool get isTeacher;
  @override
  String get name;
  @override
  List<dynamic> get Children;
  @override
  @JsonKey(ignore: true)
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerLogoutUser _$ServerLogoutUserFromJson(Map<String, dynamic> json) {
  return _ServerLogoutUser.fromJson(json);
}

/// @nodoc
mixin _$ServerLogoutUser {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerLogoutUserCopyWith<ServerLogoutUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerLogoutUserCopyWith<$Res> {
  factory $ServerLogoutUserCopyWith(
          ServerLogoutUser value, $Res Function(ServerLogoutUser) then) =
      _$ServerLogoutUserCopyWithImpl<$Res, ServerLogoutUser>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ServerLogoutUserCopyWithImpl<$Res, $Val extends ServerLogoutUser>
    implements $ServerLogoutUserCopyWith<$Res> {
  _$ServerLogoutUserCopyWithImpl(this._value, this._then);

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
abstract class _$$ServerLogoutUserImplCopyWith<$Res>
    implements $ServerLogoutUserCopyWith<$Res> {
  factory _$$ServerLogoutUserImplCopyWith(_$ServerLogoutUserImpl value,
          $Res Function(_$ServerLogoutUserImpl) then) =
      __$$ServerLogoutUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ServerLogoutUserImplCopyWithImpl<$Res>
    extends _$ServerLogoutUserCopyWithImpl<$Res, _$ServerLogoutUserImpl>
    implements _$$ServerLogoutUserImplCopyWith<$Res> {
  __$$ServerLogoutUserImplCopyWithImpl(_$ServerLogoutUserImpl _value,
      $Res Function(_$ServerLogoutUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ServerLogoutUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerLogoutUserImpl implements _ServerLogoutUser {
  const _$ServerLogoutUserImpl({required this.eventType});

  factory _$ServerLogoutUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerLogoutUserImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ServerLogoutUser(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerLogoutUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerLogoutUserImplCopyWith<_$ServerLogoutUserImpl> get copyWith =>
      __$$ServerLogoutUserImplCopyWithImpl<_$ServerLogoutUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerLogoutUserImplToJson(
      this,
    );
  }
}

abstract class _ServerLogoutUser implements ServerLogoutUser {
  const factory _ServerLogoutUser({required final String eventType}) =
      _$ServerLogoutUserImpl;

  factory _ServerLogoutUser.fromJson(Map<String, dynamic> json) =
      _$ServerLogoutUserImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ServerLogoutUserImplCopyWith<_$ServerLogoutUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
