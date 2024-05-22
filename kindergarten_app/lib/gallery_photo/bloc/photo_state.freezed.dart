// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryState {
  List<Gallery> get lastPhotos => throw _privateConstructorUsedError;
  List<Uint8List> get photoData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryStateCopyWith<GalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
          GalleryState value, $Res Function(GalleryState) then) =
      _$GalleryStateCopyWithImpl<$Res, GalleryState>;
  @useResult
  $Res call({List<Gallery> lastPhotos, List<Uint8List> photoData});
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res, $Val extends GalleryState>
    implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPhotos = null,
    Object? photoData = null,
  }) {
    return _then(_value.copyWith(
      lastPhotos: null == lastPhotos
          ? _value.lastPhotos
          : lastPhotos // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
      photoData: null == photoData
          ? _value.photoData
          : photoData // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryStateImplCopyWith<$Res>
    implements $GalleryStateCopyWith<$Res> {
  factory _$$GalleryStateImplCopyWith(
          _$GalleryStateImpl value, $Res Function(_$GalleryStateImpl) then) =
      __$$GalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Gallery> lastPhotos, List<Uint8List> photoData});
}

/// @nodoc
class __$$GalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$GalleryStateImpl>
    implements _$$GalleryStateImplCopyWith<$Res> {
  __$$GalleryStateImplCopyWithImpl(
      _$GalleryStateImpl _value, $Res Function(_$GalleryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPhotos = null,
    Object? photoData = null,
  }) {
    return _then(_$GalleryStateImpl(
      lastPhotos: null == lastPhotos
          ? _value._lastPhotos
          : lastPhotos // ignore: cast_nullable_to_non_nullable
              as List<Gallery>,
      photoData: null == photoData
          ? _value._photoData
          : photoData // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$GalleryStateImpl implements _GalleryState {
  const _$GalleryStateImpl(
      {final List<Gallery> lastPhotos = const [],
      final List<Uint8List> photoData = const []})
      : _lastPhotos = lastPhotos,
        _photoData = photoData;

  final List<Gallery> _lastPhotos;
  @override
  @JsonKey()
  List<Gallery> get lastPhotos {
    if (_lastPhotos is EqualUnmodifiableListView) return _lastPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastPhotos);
  }

  final List<Uint8List> _photoData;
  @override
  @JsonKey()
  List<Uint8List> get photoData {
    if (_photoData is EqualUnmodifiableListView) return _photoData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoData);
  }

  @override
  String toString() {
    return 'GalleryState(lastPhotos: $lastPhotos, photoData: $photoData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._lastPhotos, _lastPhotos) &&
            const DeepCollectionEquality()
                .equals(other._photoData, _photoData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastPhotos),
      const DeepCollectionEquality().hash(_photoData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      __$$GalleryStateImplCopyWithImpl<_$GalleryStateImpl>(this, _$identity);
}

abstract class _GalleryState implements GalleryState {
  const factory _GalleryState(
      {final List<Gallery> lastPhotos,
      final List<Uint8List> photoData}) = _$GalleryStateImpl;

  @override
  List<Gallery> get lastPhotos;
  @override
  List<Uint8List> get photoData;
  @override
  @JsonKey(ignore: true)
  _$$GalleryStateImplCopyWith<_$GalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
