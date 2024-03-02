// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_trailer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieTrailerDTO _$MovieTrailerDTOFromJson(Map<String, dynamic> json) {
  return _MovieTrailerDTO.fromJson(json);
}

/// @nodoc
mixin _$MovieTrailerDTO {
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'key', defaultValue: '')
  String get youtubeKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTrailerDTOCopyWith<MovieTrailerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrailerDTOCopyWith<$Res> {
  factory $MovieTrailerDTOCopyWith(
          MovieTrailerDTO value, $Res Function(MovieTrailerDTO) then) =
      _$MovieTrailerDTOCopyWithImpl<$Res, MovieTrailerDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'key', defaultValue: '') String youtubeKey});
}

/// @nodoc
class _$MovieTrailerDTOCopyWithImpl<$Res, $Val extends MovieTrailerDTO>
    implements $MovieTrailerDTOCopyWith<$Res> {
  _$MovieTrailerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? youtubeKey = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeKey: null == youtubeKey
          ? _value.youtubeKey
          : youtubeKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieTrailerDTOImplCopyWith<$Res>
    implements $MovieTrailerDTOCopyWith<$Res> {
  factory _$$MovieTrailerDTOImplCopyWith(_$MovieTrailerDTOImpl value,
          $Res Function(_$MovieTrailerDTOImpl) then) =
      __$$MovieTrailerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'key', defaultValue: '') String youtubeKey});
}

/// @nodoc
class __$$MovieTrailerDTOImplCopyWithImpl<$Res>
    extends _$MovieTrailerDTOCopyWithImpl<$Res, _$MovieTrailerDTOImpl>
    implements _$$MovieTrailerDTOImplCopyWith<$Res> {
  __$$MovieTrailerDTOImplCopyWithImpl(
      _$MovieTrailerDTOImpl _value, $Res Function(_$MovieTrailerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? youtubeKey = null,
  }) {
    return _then(_$MovieTrailerDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeKey: null == youtubeKey
          ? _value.youtubeKey
          : youtubeKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieTrailerDTOImpl extends _MovieTrailerDTO {
  _$MovieTrailerDTOImpl(
      {@JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'key', defaultValue: '') required this.youtubeKey})
      : super._();

  factory _$MovieTrailerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieTrailerDTOImplFromJson(json);

  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'key', defaultValue: '')
  final String youtubeKey;

  @override
  String toString() {
    return 'MovieTrailerDTO(name: $name, youtubeKey: $youtubeKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieTrailerDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.youtubeKey, youtubeKey) ||
                other.youtubeKey == youtubeKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, youtubeKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieTrailerDTOImplCopyWith<_$MovieTrailerDTOImpl> get copyWith =>
      __$$MovieTrailerDTOImplCopyWithImpl<_$MovieTrailerDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieTrailerDTOImplToJson(
      this,
    );
  }
}

abstract class _MovieTrailerDTO extends MovieTrailerDTO {
  factory _MovieTrailerDTO(
      {@JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'key', defaultValue: '')
      required final String youtubeKey}) = _$MovieTrailerDTOImpl;
  _MovieTrailerDTO._() : super._();

  factory _MovieTrailerDTO.fromJson(Map<String, dynamic> json) =
      _$MovieTrailerDTOImpl.fromJson;

  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'key', defaultValue: '')
  String get youtubeKey;
  @override
  @JsonKey(ignore: true)
  _$$MovieTrailerDTOImplCopyWith<_$MovieTrailerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
