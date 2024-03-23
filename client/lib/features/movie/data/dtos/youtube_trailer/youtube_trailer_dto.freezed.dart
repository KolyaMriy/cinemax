// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_trailer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YoutubeTrailerDTO _$YoutubeTrailerDTOFromJson(Map<String, dynamic> json) {
  return _YoutubeTrailerDTO.fromJson(json);
}

/// @nodoc
mixin _$YoutubeTrailerDTO {
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'key', defaultValue: '')
  String get youtubeKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeTrailerDTOCopyWith<YoutubeTrailerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeTrailerDTOCopyWith<$Res> {
  factory $YoutubeTrailerDTOCopyWith(
          YoutubeTrailerDTO value, $Res Function(YoutubeTrailerDTO) then) =
      _$YoutubeTrailerDTOCopyWithImpl<$Res, YoutubeTrailerDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'key', defaultValue: '') String youtubeKey});
}

/// @nodoc
class _$YoutubeTrailerDTOCopyWithImpl<$Res, $Val extends YoutubeTrailerDTO>
    implements $YoutubeTrailerDTOCopyWith<$Res> {
  _$YoutubeTrailerDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$YoutubeTrailerDTOImplCopyWith<$Res>
    implements $YoutubeTrailerDTOCopyWith<$Res> {
  factory _$$YoutubeTrailerDTOImplCopyWith(_$YoutubeTrailerDTOImpl value,
          $Res Function(_$YoutubeTrailerDTOImpl) then) =
      __$$YoutubeTrailerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'key', defaultValue: '') String youtubeKey});
}

/// @nodoc
class __$$YoutubeTrailerDTOImplCopyWithImpl<$Res>
    extends _$YoutubeTrailerDTOCopyWithImpl<$Res, _$YoutubeTrailerDTOImpl>
    implements _$$YoutubeTrailerDTOImplCopyWith<$Res> {
  __$$YoutubeTrailerDTOImplCopyWithImpl(_$YoutubeTrailerDTOImpl _value,
      $Res Function(_$YoutubeTrailerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? youtubeKey = null,
  }) {
    return _then(_$YoutubeTrailerDTOImpl(
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
class _$YoutubeTrailerDTOImpl implements _YoutubeTrailerDTO {
  _$YoutubeTrailerDTOImpl(
      {@JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'key', defaultValue: '') required this.youtubeKey});

  factory _$YoutubeTrailerDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeTrailerDTOImplFromJson(json);

  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'key', defaultValue: '')
  final String youtubeKey;

  @override
  String toString() {
    return 'YoutubeTrailerDTO(name: $name, youtubeKey: $youtubeKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeTrailerDTOImpl &&
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
  _$$YoutubeTrailerDTOImplCopyWith<_$YoutubeTrailerDTOImpl> get copyWith =>
      __$$YoutubeTrailerDTOImplCopyWithImpl<_$YoutubeTrailerDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeTrailerDTOImplToJson(
      this,
    );
  }
}

abstract class _YoutubeTrailerDTO implements YoutubeTrailerDTO {
  factory _YoutubeTrailerDTO(
      {@JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'key', defaultValue: '')
      required final String youtubeKey}) = _$YoutubeTrailerDTOImpl;

  factory _YoutubeTrailerDTO.fromJson(Map<String, dynamic> json) =
      _$YoutubeTrailerDTOImpl.fromJson;

  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'key', defaultValue: '')
  String get youtubeKey;
  @override
  @JsonKey(ignore: true)
  _$$YoutubeTrailerDTOImplCopyWith<_$YoutubeTrailerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
