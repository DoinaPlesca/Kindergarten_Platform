// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToAddNewPhoto _$ClientWantsToAddNewPhotoFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToAddNewPhoto.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToAddNewPhoto {
  String get eventType => throw _privateConstructorUsedError;
  String get photourl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToAddNewPhotoCopyWith<ClientWantsToAddNewPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToAddNewPhotoCopyWith<$Res> {
  factory $ClientWantsToAddNewPhotoCopyWith(ClientWantsToAddNewPhoto value,
          $Res Function(ClientWantsToAddNewPhoto) then) =
      _$ClientWantsToAddNewPhotoCopyWithImpl<$Res, ClientWantsToAddNewPhoto>;
  @useResult
  $Res call({String eventType, String photourl, String description});
}

/// @nodoc
class _$ClientWantsToAddNewPhotoCopyWithImpl<$Res,
        $Val extends ClientWantsToAddNewPhoto>
    implements $ClientWantsToAddNewPhotoCopyWith<$Res> {
  _$ClientWantsToAddNewPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? photourl = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      photourl: null == photourl
          ? _value.photourl
          : photourl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToAddNewPhotoImplCopyWith<$Res>
    implements $ClientWantsToAddNewPhotoCopyWith<$Res> {
  factory _$$ClientWantsToAddNewPhotoImplCopyWith(
          _$ClientWantsToAddNewPhotoImpl value,
          $Res Function(_$ClientWantsToAddNewPhotoImpl) then) =
      __$$ClientWantsToAddNewPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String photourl, String description});
}

/// @nodoc
class __$$ClientWantsToAddNewPhotoImplCopyWithImpl<$Res>
    extends _$ClientWantsToAddNewPhotoCopyWithImpl<$Res,
        _$ClientWantsToAddNewPhotoImpl>
    implements _$$ClientWantsToAddNewPhotoImplCopyWith<$Res> {
  __$$ClientWantsToAddNewPhotoImplCopyWithImpl(
      _$ClientWantsToAddNewPhotoImpl _value,
      $Res Function(_$ClientWantsToAddNewPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? photourl = null,
    Object? description = null,
  }) {
    return _then(_$ClientWantsToAddNewPhotoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      photourl: null == photourl
          ? _value.photourl
          : photourl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToAddNewPhotoImpl implements _ClientWantsToAddNewPhoto {
  const _$ClientWantsToAddNewPhotoImpl(
      {required this.eventType,
      required this.photourl,
      required this.description});

  factory _$ClientWantsToAddNewPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToAddNewPhotoImplFromJson(json);

  @override
  final String eventType;
  @override
  final String photourl;
  @override
  final String description;

  @override
  String toString() {
    return 'ClientWantsToAddNewPhoto(eventType: $eventType, photourl: $photourl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToAddNewPhotoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.photourl, photourl) ||
                other.photourl == photourl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventType, photourl, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToAddNewPhotoImplCopyWith<_$ClientWantsToAddNewPhotoImpl>
      get copyWith => __$$ClientWantsToAddNewPhotoImplCopyWithImpl<
          _$ClientWantsToAddNewPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToAddNewPhotoImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToAddNewPhoto implements ClientWantsToAddNewPhoto {
  const factory _ClientWantsToAddNewPhoto(
      {required final String eventType,
      required final String photourl,
      required final String description}) = _$ClientWantsToAddNewPhotoImpl;

  factory _ClientWantsToAddNewPhoto.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToAddNewPhotoImpl.fromJson;

  @override
  String get eventType;
  @override
  String get photourl;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToAddNewPhotoImplCopyWith<_$ClientWantsToAddNewPhotoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToGetLastPhotos _$ClientWantsToGetLastPhotosFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToGetLastPhotos.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToGetLastPhotos {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToGetLastPhotosCopyWith<ClientWantsToGetLastPhotos>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToGetLastPhotosCopyWith<$Res> {
  factory $ClientWantsToGetLastPhotosCopyWith(ClientWantsToGetLastPhotos value,
          $Res Function(ClientWantsToGetLastPhotos) then) =
      _$ClientWantsToGetLastPhotosCopyWithImpl<$Res,
          ClientWantsToGetLastPhotos>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ClientWantsToGetLastPhotosCopyWithImpl<$Res,
        $Val extends ClientWantsToGetLastPhotos>
    implements $ClientWantsToGetLastPhotosCopyWith<$Res> {
  _$ClientWantsToGetLastPhotosCopyWithImpl(this._value, this._then);

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
abstract class _$$ClientWantsToGetLastPhotosImplCopyWith<$Res>
    implements $ClientWantsToGetLastPhotosCopyWith<$Res> {
  factory _$$ClientWantsToGetLastPhotosImplCopyWith(
          _$ClientWantsToGetLastPhotosImpl value,
          $Res Function(_$ClientWantsToGetLastPhotosImpl) then) =
      __$$ClientWantsToGetLastPhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ClientWantsToGetLastPhotosImplCopyWithImpl<$Res>
    extends _$ClientWantsToGetLastPhotosCopyWithImpl<$Res,
        _$ClientWantsToGetLastPhotosImpl>
    implements _$$ClientWantsToGetLastPhotosImplCopyWith<$Res> {
  __$$ClientWantsToGetLastPhotosImplCopyWithImpl(
      _$ClientWantsToGetLastPhotosImpl _value,
      $Res Function(_$ClientWantsToGetLastPhotosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToGetLastPhotosImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToGetLastPhotosImpl implements _ClientWantsToGetLastPhotos {
  const _$ClientWantsToGetLastPhotosImpl({required this.eventType});

  factory _$ClientWantsToGetLastPhotosImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToGetLastPhotosImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString() {
    return 'ClientWantsToGetLastPhotos(eventType: $eventType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToGetLastPhotosImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToGetLastPhotosImplCopyWith<_$ClientWantsToGetLastPhotosImpl>
      get copyWith => __$$ClientWantsToGetLastPhotosImplCopyWithImpl<
          _$ClientWantsToGetLastPhotosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToGetLastPhotosImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToGetLastPhotos
    implements ClientWantsToGetLastPhotos {
  const factory _ClientWantsToGetLastPhotos({required final String eventType}) =
      _$ClientWantsToGetLastPhotosImpl;

  factory _ClientWantsToGetLastPhotos.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToGetLastPhotosImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToGetLastPhotosImplCopyWith<_$ClientWantsToGetLastPhotosImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerAddNewPhoto _$ServerAddNewPhotoFromJson(Map<String, dynamic> json) {
  return _ServerAddNewPhoto.fromJson(json);
}

/// @nodoc
mixin _$ServerAddNewPhoto {
  String get eventType => throw _privateConstructorUsedError;
  Gallery get newPhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAddNewPhotoCopyWith<ServerAddNewPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAddNewPhotoCopyWith<$Res> {
  factory $ServerAddNewPhotoCopyWith(
          ServerAddNewPhoto value, $Res Function(ServerAddNewPhoto) then) =
      _$ServerAddNewPhotoCopyWithImpl<$Res, ServerAddNewPhoto>;
  @useResult
  $Res call({String eventType, Gallery newPhoto});

  $GalleryCopyWith<$Res> get newPhoto;
}

/// @nodoc
class _$ServerAddNewPhotoCopyWithImpl<$Res, $Val extends ServerAddNewPhoto>
    implements $ServerAddNewPhotoCopyWith<$Res> {
  _$ServerAddNewPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? newPhoto = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      newPhoto: null == newPhoto
          ? _value.newPhoto
          : newPhoto // ignore: cast_nullable_to_non_nullable
              as Gallery,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GalleryCopyWith<$Res> get newPhoto {
    return $GalleryCopyWith<$Res>(_value.newPhoto, (value) {
      return _then(_value.copyWith(newPhoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerAddNewPhotoImplCopyWith<$Res>
    implements $ServerAddNewPhotoCopyWith<$Res> {
  factory _$$ServerAddNewPhotoImplCopyWith(_$ServerAddNewPhotoImpl value,
          $Res Function(_$ServerAddNewPhotoImpl) then) =
      __$$ServerAddNewPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, Gallery newPhoto});

  @override
  $GalleryCopyWith<$Res> get newPhoto;
}

/// @nodoc
class __$$ServerAddNewPhotoImplCopyWithImpl<$Res>
    extends _$ServerAddNewPhotoCopyWithImpl<$Res, _$ServerAddNewPhotoImpl>
    implements _$$ServerAddNewPhotoImplCopyWith<$Res> {
  __$$ServerAddNewPhotoImplCopyWithImpl(_$ServerAddNewPhotoImpl _value,
      $Res Function(_$ServerAddNewPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? newPhoto = null,
  }) {
    return _then(_$ServerAddNewPhotoImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      newPhoto: null == newPhoto
          ? _value.newPhoto
          : newPhoto // ignore: cast_nullable_to_non_nullable
              as Gallery,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAddNewPhotoImpl implements _ServerAddNewPhoto {
  const _$ServerAddNewPhotoImpl(
      {required this.eventType, required this.newPhoto});

  factory _$ServerAddNewPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAddNewPhotoImplFromJson(json);

  @override
  final String eventType;
  @override
  final Gallery newPhoto;

  @override
  String toString() {
    return 'ServerAddNewPhoto(eventType: $eventType, newPhoto: $newPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAddNewPhotoImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.newPhoto, newPhoto) ||
                other.newPhoto == newPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, newPhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAddNewPhotoImplCopyWith<_$ServerAddNewPhotoImpl> get copyWith =>
      __$$ServerAddNewPhotoImplCopyWithImpl<_$ServerAddNewPhotoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAddNewPhotoImplToJson(
      this,
    );
  }
}

abstract class _ServerAddNewPhoto implements ServerAddNewPhoto {
  const factory _ServerAddNewPhoto(
      {required final String eventType,
      required final Gallery newPhoto}) = _$ServerAddNewPhotoImpl;

  factory _ServerAddNewPhoto.fromJson(Map<String, dynamic> json) =
      _$ServerAddNewPhotoImpl.fromJson;

  @override
  String get eventType;
  @override
  Gallery get newPhoto;
  @override
  @JsonKey(ignore: true)
  _$$ServerAddNewPhotoImplCopyWith<_$ServerAddNewPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerGetLastPhotos _$ServerGetLastPhotosFromJson(Map<String, dynamic> json) {
  return _ServerGetLastPhotos.fromJson(json);
}

/// @nodoc
mixin _$ServerGetLastPhotos {
  String get eventType => throw _privateConstructorUsedError;
  List<Gallery> get lastPhotos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerGetLastPhotosCopyWith<ServerGetLastPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerGetLastPhotosCopyWith<$Res> {
  factory $ServerGetLastPhotosCopyWith(
          ServerGetLastPhotos value, $Res Function(ServerGetLastPhotos) then) =
      _$ServerGetLastPhotosCopyWithImpl<$Res, ServerGetLastPhotos>;
  @useResult
  $Res call({String eventType, List<Gallery> lastPhotos});
}

/// @nodoc
class _$ServerGetLastPhotosCopyWithImpl<$Res, $Val extends ServerGetLastPhotos>
    implements $ServerGetLastPhotosCopyWith<$Res> {
  _$ServerGetLastPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? lastPhotos = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      lastPhotos: null == lastPhotos
          ? _value.lastPhotos
          : lastPhotos // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerGetLastPhotosImplCopyWith<$Res>
    implements $ServerGetLastPhotosCopyWith<$Res> {
  factory _$$ServerGetLastPhotosImplCopyWith(_$ServerGetLastPhotosImpl value,
          $Res Function(_$ServerGetLastPhotosImpl) then) =
      __$$ServerGetLastPhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, List<Gallery> lastPhotos});
}

/// @nodoc
class __$$ServerGetLastPhotosImplCopyWithImpl<$Res>
    extends _$ServerGetLastPhotosCopyWithImpl<$Res, _$ServerGetLastPhotosImpl>
    implements _$$ServerGetLastPhotosImplCopyWith<$Res> {
  __$$ServerGetLastPhotosImplCopyWithImpl(_$ServerGetLastPhotosImpl _value,
      $Res Function(_$ServerGetLastPhotosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? lastPhotos = null,
  }) {
    return _then(_$ServerGetLastPhotosImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      lastPhotos: null == lastPhotos
          ? _value._lastPhotos
          : lastPhotos // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerGetLastPhotosImpl implements _ServerGetLastPhotos {
  const _$ServerGetLastPhotosImpl(
      {required this.eventType, final List<Gallery> lastPhotos = const []})
      : _lastPhotos = lastPhotos;

  factory _$ServerGetLastPhotosImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerGetLastPhotosImplFromJson(json);

  @override
  final String eventType;
  final List<Gallery> _lastPhotos;
  @override
  @JsonKey()
  List<Gallery> get lastPhotos {
    if (_lastPhotos is EqualUnmodifiableListView) return _lastPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastPhotos);
  }

  @override
  String toString() {
    return 'ServerGetLastPhotos(eventType: $eventType, lastPhotos: $lastPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerGetLastPhotosImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._lastPhotos, _lastPhotos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, eventType, const DeepCollectionEquality().hash(_lastPhotos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerGetLastPhotosImplCopyWith<_$ServerGetLastPhotosImpl> get copyWith =>
      __$$ServerGetLastPhotosImplCopyWithImpl<_$ServerGetLastPhotosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerGetLastPhotosImplToJson(
      this,
    );
  }
}

abstract class _ServerGetLastPhotos implements ServerGetLastPhotos {
  const factory _ServerGetLastPhotos(
      {required final String eventType,
      final List<Gallery> lastPhotos}) = _$ServerGetLastPhotosImpl;

  factory _ServerGetLastPhotos.fromJson(Map<String, dynamic> json) =
      _$ServerGetLastPhotosImpl.fromJson;

  @override
  String get eventType;
  @override
  List<Gallery> get lastPhotos;
  @override
  @JsonKey(ignore: true)
  _$$ServerGetLastPhotosImplCopyWith<_$ServerGetLastPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
