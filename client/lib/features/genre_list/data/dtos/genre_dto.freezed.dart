// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenreDTO _$GenreDTOFromJson(Map<String, dynamic> json) {
  return _GenreDTO.fromJson(json);
}

/// @nodoc
mixin _$GenreDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreDTOCopyWith<GenreDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreDTOCopyWith<$Res> {
  factory $GenreDTOCopyWith(GenreDTO value, $Res Function(GenreDTO) then) =
      _$GenreDTOCopyWithImpl<$Res, GenreDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$GenreDTOCopyWithImpl<$Res, $Val extends GenreDTO>
    implements $GenreDTOCopyWith<$Res> {
  _$GenreDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreDTOImplCopyWith<$Res>
    implements $GenreDTOCopyWith<$Res> {
  factory _$$GenreDTOImplCopyWith(
          _$GenreDTOImpl value, $Res Function(_$GenreDTOImpl) then) =
      __$$GenreDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$$GenreDTOImplCopyWithImpl<$Res>
    extends _$GenreDTOCopyWithImpl<$Res, _$GenreDTOImpl>
    implements _$$GenreDTOImplCopyWith<$Res> {
  __$$GenreDTOImplCopyWithImpl(
      _$GenreDTOImpl _value, $Res Function(_$GenreDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenreDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreDTOImpl extends _GenreDTO {
  _$GenreDTOImpl(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$GenreDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'GenreDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreDTOImplCopyWith<_$GenreDTOImpl> get copyWith =>
      __$$GenreDTOImplCopyWithImpl<_$GenreDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreDTOImplToJson(
      this,
    );
  }
}

abstract class _GenreDTO extends GenreDTO {
  factory _GenreDTO(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '')
      required final String name}) = _$GenreDTOImpl;
  _GenreDTO._() : super._();

  factory _GenreDTO.fromJson(Map<String, dynamic> json) =
      _$GenreDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GenreDTOImplCopyWith<_$GenreDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
