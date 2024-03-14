// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CastDTO _$CastDTOFromJson(Map<String, dynamic> json) {
  return _CastDTO.fromJson(json);
}

/// @nodoc
mixin _$CastDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'character', defaultValue: '')
  String get character => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department', defaultValue: '')
  String get knownForDepartment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastDTOCopyWith<CastDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDTOCopyWith<$Res> {
  factory $CastDTOCopyWith(CastDTO value, $Res Function(CastDTO) then) =
      _$CastDTOCopyWithImpl<$Res, CastDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'character', defaultValue: '') String character,
      @JsonKey(name: 'profile_path', defaultValue: '') String image,
      @JsonKey(name: 'popularity', defaultValue: 0) double popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      String knownForDepartment});
}

/// @nodoc
class _$CastDTOCopyWithImpl<$Res, $Val extends CastDTO>
    implements $CastDTOCopyWith<$Res> {
  _$CastDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = null,
    Object? image = null,
    Object? popularity = null,
    Object? knownForDepartment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastDTOImplCopyWith<$Res> implements $CastDTOCopyWith<$Res> {
  factory _$$CastDTOImplCopyWith(
          _$CastDTOImpl value, $Res Function(_$CastDTOImpl) then) =
      __$$CastDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'character', defaultValue: '') String character,
      @JsonKey(name: 'profile_path', defaultValue: '') String image,
      @JsonKey(name: 'popularity', defaultValue: 0) double popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      String knownForDepartment});
}

/// @nodoc
class __$$CastDTOImplCopyWithImpl<$Res>
    extends _$CastDTOCopyWithImpl<$Res, _$CastDTOImpl>
    implements _$$CastDTOImplCopyWith<$Res> {
  __$$CastDTOImplCopyWithImpl(
      _$CastDTOImpl _value, $Res Function(_$CastDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? character = null,
    Object? image = null,
    Object? popularity = null,
    Object? knownForDepartment = null,
  }) {
    return _then(_$CastDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      knownForDepartment: null == knownForDepartment
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastDTOImpl implements _CastDTO {
  _$CastDTOImpl(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'character', defaultValue: '') required this.character,
      @JsonKey(name: 'profile_path', defaultValue: '') required this.image,
      @JsonKey(name: 'popularity', defaultValue: 0) required this.popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      required this.knownForDepartment});

  factory _$CastDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'character', defaultValue: '')
  final String character;
  @override
  @JsonKey(name: 'profile_path', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'popularity', defaultValue: 0)
  final double popularity;
  @override
  @JsonKey(name: 'known_for_department', defaultValue: '')
  final String knownForDepartment;

  @override
  String toString() {
    return 'CastDTO(id: $id, name: $name, character: $character, image: $image, popularity: $popularity, knownForDepartment: $knownForDepartment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, character, image, popularity, knownForDepartment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastDTOImplCopyWith<_$CastDTOImpl> get copyWith =>
      __$$CastDTOImplCopyWithImpl<_$CastDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastDTOImplToJson(
      this,
    );
  }
}

abstract class _CastDTO implements CastDTO {
  factory _CastDTO(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'character', defaultValue: '')
      required final String character,
      @JsonKey(name: 'profile_path', defaultValue: '')
      required final String image,
      @JsonKey(name: 'popularity', defaultValue: 0)
      required final double popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      required final String knownForDepartment}) = _$CastDTOImpl;

  factory _CastDTO.fromJson(Map<String, dynamic> json) = _$CastDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'character', defaultValue: '')
  String get character;
  @override
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity;
  @override
  @JsonKey(name: 'known_for_department', defaultValue: '')
  String get knownForDepartment;
  @override
  @JsonKey(ignore: true)
  _$$CastDTOImplCopyWith<_$CastDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
