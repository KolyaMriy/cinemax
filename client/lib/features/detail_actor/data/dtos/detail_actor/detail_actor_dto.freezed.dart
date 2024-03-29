// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_actor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailActorDTO _$DetailActorDTOFromJson(Map<String, dynamic> json) {
  return _DetailActorDTO.fromJson(json);
}

/// @nodoc
mixin _$DetailActorDTO {
  @HiveField(0)
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'biography', defaultValue: '')
  String get biography => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'birthday', defaultValue: '')
  String get birthday => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'deathday', defaultValue: '')
  String get deathday => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'alsoKnownAs', defaultValue: [])
  List<MovieDTO> get alsoKnownAs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailActorDTOCopyWith<DetailActorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailActorDTOCopyWith<$Res> {
  factory $DetailActorDTOCopyWith(
          DetailActorDTO value, $Res Function(DetailActorDTO) then) =
      _$DetailActorDTOCopyWithImpl<$Res, DetailActorDTO>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'name', defaultValue: '') String name,
      @HiveField(1)
      @JsonKey(name: 'biography', defaultValue: '')
      String biography,
      @HiveField(2)
      @JsonKey(name: 'birthday', defaultValue: '')
      String birthday,
      @HiveField(3) @JsonKey(name: 'id', defaultValue: 0) int id,
      @HiveField(4)
      @JsonKey(name: 'profile_path', defaultValue: '')
      String image,
      @HiveField(5)
      @JsonKey(name: 'deathday', defaultValue: '')
      String deathday,
      @HiveField(6)
      @JsonKey(name: 'alsoKnownAs', defaultValue: [])
      List<MovieDTO> alsoKnownAs});
}

/// @nodoc
class _$DetailActorDTOCopyWithImpl<$Res, $Val extends DetailActorDTO>
    implements $DetailActorDTOCopyWith<$Res> {
  _$DetailActorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? biography = null,
    Object? birthday = null,
    Object? id = null,
    Object? image = null,
    Object? deathday = null,
    Object? alsoKnownAs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      biography: null == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      deathday: null == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String,
      alsoKnownAs: null == alsoKnownAs
          ? _value.alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<MovieDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailActorDTOImplCopyWith<$Res>
    implements $DetailActorDTOCopyWith<$Res> {
  factory _$$DetailActorDTOImplCopyWith(_$DetailActorDTOImpl value,
          $Res Function(_$DetailActorDTOImpl) then) =
      __$$DetailActorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'name', defaultValue: '') String name,
      @HiveField(1)
      @JsonKey(name: 'biography', defaultValue: '')
      String biography,
      @HiveField(2)
      @JsonKey(name: 'birthday', defaultValue: '')
      String birthday,
      @HiveField(3) @JsonKey(name: 'id', defaultValue: 0) int id,
      @HiveField(4)
      @JsonKey(name: 'profile_path', defaultValue: '')
      String image,
      @HiveField(5)
      @JsonKey(name: 'deathday', defaultValue: '')
      String deathday,
      @HiveField(6)
      @JsonKey(name: 'alsoKnownAs', defaultValue: [])
      List<MovieDTO> alsoKnownAs});
}

/// @nodoc
class __$$DetailActorDTOImplCopyWithImpl<$Res>
    extends _$DetailActorDTOCopyWithImpl<$Res, _$DetailActorDTOImpl>
    implements _$$DetailActorDTOImplCopyWith<$Res> {
  __$$DetailActorDTOImplCopyWithImpl(
      _$DetailActorDTOImpl _value, $Res Function(_$DetailActorDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? biography = null,
    Object? birthday = null,
    Object? id = null,
    Object? image = null,
    Object? deathday = null,
    Object? alsoKnownAs = null,
  }) {
    return _then(_$DetailActorDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      biography: null == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      deathday: null == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String,
      alsoKnownAs: null == alsoKnownAs
          ? _value._alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<MovieDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailActorDTOImpl implements _DetailActorDTO {
  const _$DetailActorDTOImpl(
      {@HiveField(0)
      @JsonKey(name: 'name', defaultValue: '')
      required this.name,
      @HiveField(1)
      @JsonKey(name: 'biography', defaultValue: '')
      required this.biography,
      @HiveField(2)
      @JsonKey(name: 'birthday', defaultValue: '')
      required this.birthday,
      @HiveField(3) @JsonKey(name: 'id', defaultValue: 0) required this.id,
      @HiveField(4)
      @JsonKey(name: 'profile_path', defaultValue: '')
      required this.image,
      @HiveField(5)
      @JsonKey(name: 'deathday', defaultValue: '')
      required this.deathday,
      @HiveField(6)
      @JsonKey(name: 'alsoKnownAs', defaultValue: [])
      required final List<MovieDTO> alsoKnownAs})
      : _alsoKnownAs = alsoKnownAs;

  factory _$DetailActorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailActorDTOImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @HiveField(1)
  @JsonKey(name: 'biography', defaultValue: '')
  final String biography;
  @override
  @HiveField(2)
  @JsonKey(name: 'birthday', defaultValue: '')
  final String birthday;
  @override
  @HiveField(3)
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @HiveField(4)
  @JsonKey(name: 'profile_path', defaultValue: '')
  final String image;
  @override
  @HiveField(5)
  @JsonKey(name: 'deathday', defaultValue: '')
  final String deathday;
  final List<MovieDTO> _alsoKnownAs;
  @override
  @HiveField(6)
  @JsonKey(name: 'alsoKnownAs', defaultValue: [])
  List<MovieDTO> get alsoKnownAs {
    if (_alsoKnownAs is EqualUnmodifiableListView) return _alsoKnownAs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alsoKnownAs);
  }

  @override
  String toString() {
    return 'DetailActorDTO(name: $name, biography: $biography, birthday: $birthday, id: $id, image: $image, deathday: $deathday, alsoKnownAs: $alsoKnownAs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailActorDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.biography, biography) ||
                other.biography == biography) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.deathday, deathday) ||
                other.deathday == deathday) &&
            const DeepCollectionEquality()
                .equals(other._alsoKnownAs, _alsoKnownAs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, biography, birthday, id,
      image, deathday, const DeepCollectionEquality().hash(_alsoKnownAs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailActorDTOImplCopyWith<_$DetailActorDTOImpl> get copyWith =>
      __$$DetailActorDTOImplCopyWithImpl<_$DetailActorDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailActorDTOImplToJson(
      this,
    );
  }
}

abstract class _DetailActorDTO implements DetailActorDTO {
  const factory _DetailActorDTO(
      {@HiveField(0)
      @JsonKey(name: 'name', defaultValue: '')
      required final String name,
      @HiveField(1)
      @JsonKey(name: 'biography', defaultValue: '')
      required final String biography,
      @HiveField(2)
      @JsonKey(name: 'birthday', defaultValue: '')
      required final String birthday,
      @HiveField(3) @JsonKey(name: 'id', defaultValue: 0) required final int id,
      @HiveField(4)
      @JsonKey(name: 'profile_path', defaultValue: '')
      required final String image,
      @HiveField(5)
      @JsonKey(name: 'deathday', defaultValue: '')
      required final String deathday,
      @HiveField(6)
      @JsonKey(name: 'alsoKnownAs', defaultValue: [])
      required final List<MovieDTO> alsoKnownAs}) = _$DetailActorDTOImpl;

  factory _DetailActorDTO.fromJson(Map<String, dynamic> json) =
      _$DetailActorDTOImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @HiveField(1)
  @JsonKey(name: 'biography', defaultValue: '')
  String get biography;
  @override
  @HiveField(2)
  @JsonKey(name: 'birthday', defaultValue: '')
  String get birthday;
  @override
  @HiveField(3)
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @HiveField(4)
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get image;
  @override
  @HiveField(5)
  @JsonKey(name: 'deathday', defaultValue: '')
  String get deathday;
  @override
  @HiveField(6)
  @JsonKey(name: 'alsoKnownAs', defaultValue: [])
  List<MovieDTO> get alsoKnownAs;
  @override
  @JsonKey(ignore: true)
  _$$DetailActorDTOImplCopyWith<_$DetailActorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
