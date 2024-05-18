// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Gallery _$GalleryFromJson(Map<String, dynamic> json) {
  return _Gallery.fromJson(json);
}

/// @nodoc
mixin _$Gallery {
  int get photoid => throw _privateConstructorUsedError;
  String? get photourl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryCopyWith<Gallery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryCopyWith<$Res> {
  factory $GalleryCopyWith(Gallery value, $Res Function(Gallery) then) =
      _$GalleryCopyWithImpl<$Res, Gallery>;
  @useResult
  $Res call({int photoid, String? photourl, String? description});
}

/// @nodoc
class _$GalleryCopyWithImpl<$Res, $Val extends Gallery>
    implements $GalleryCopyWith<$Res> {
  _$GalleryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoid = null,
    Object? photourl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      photoid: null == photoid
          ? _value.photoid
          : photoid // ignore: cast_nullable_to_non_nullable
              as int,
      photourl: freezed == photourl
          ? _value.photourl
          : photourl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryImplCopyWith<$Res> implements $GalleryCopyWith<$Res> {
  factory _$$GalleryImplCopyWith(
          _$GalleryImpl value, $Res Function(_$GalleryImpl) then) =
      __$$GalleryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int photoid, String? photourl, String? description});
}

/// @nodoc
class __$$GalleryImplCopyWithImpl<$Res>
    extends _$GalleryCopyWithImpl<$Res, _$GalleryImpl>
    implements _$$GalleryImplCopyWith<$Res> {
  __$$GalleryImplCopyWithImpl(
      _$GalleryImpl _value, $Res Function(_$GalleryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoid = null,
    Object? photourl = freezed,
    Object? description = freezed,
  }) {
    return _then(_$GalleryImpl(
      photoid: null == photoid
          ? _value.photoid
          : photoid // ignore: cast_nullable_to_non_nullable
              as int,
      photourl: freezed == photourl
          ? _value.photourl
          : photourl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryImpl implements _Gallery {
  const _$GalleryImpl(
      {required this.photoid,
      required this.photourl,
      required this.description});

  factory _$GalleryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryImplFromJson(json);

  @override
  final int photoid;
  @override
  final String? photourl;
  @override
  final String? description;

  @override
  String toString() {
    return 'Gallery(photoid: $photoid, photourl: $photourl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryImpl &&
            (identical(other.photoid, photoid) || other.photoid == photoid) &&
            (identical(other.photourl, photourl) ||
                other.photourl == photourl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, photoid, photourl, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryImplCopyWith<_$GalleryImpl> get copyWith =>
      __$$GalleryImplCopyWithImpl<_$GalleryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryImplToJson(
      this,
    );
  }
}

abstract class _Gallery implements Gallery {
  const factory _Gallery(
      {required final int photoid,
      required final String? photourl,
      required final String? description}) = _$GalleryImpl;

  factory _Gallery.fromJson(Map<String, dynamic> json) = _$GalleryImpl.fromJson;

  @override
  int get photoid;
  @override
  String? get photourl;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$GalleryImplCopyWith<_$GalleryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
