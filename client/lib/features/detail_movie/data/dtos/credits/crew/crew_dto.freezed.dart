// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crew_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CrewDTO _$CrewDTOFromJson(Map<String, dynamic> json) {
  return _CrewDTO.fromJson(json);
}

/// @nodoc
mixin _$CrewDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'job', defaultValue: '')
  String get job => throw _privateConstructorUsedError;
  @JsonKey(name: 'department', defaultValue: '')
  String get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity', defaultValue: 0)
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department', defaultValue: '')
  String get knownForDepartment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewDTOCopyWith<CrewDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewDTOCopyWith<$Res> {
  factory $CrewDTOCopyWith(CrewDTO value, $Res Function(CrewDTO) then) =
      _$CrewDTOCopyWithImpl<$Res, CrewDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'job', defaultValue: '') String job,
      @JsonKey(name: 'department', defaultValue: '') String department,
      @JsonKey(name: 'profile_path', defaultValue: '') String image,
      @JsonKey(name: 'popularity', defaultValue: 0) double popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      String knownForDepartment});
}

/// @nodoc
class _$CrewDTOCopyWithImpl<$Res, $Val extends CrewDTO>
    implements $CrewDTOCopyWith<$Res> {
  _$CrewDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? job = null,
    Object? department = null,
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
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CrewDTOImplCopyWith<$Res> implements $CrewDTOCopyWith<$Res> {
  factory _$$CrewDTOImplCopyWith(
          _$CrewDTOImpl value, $Res Function(_$CrewDTOImpl) then) =
      __$$CrewDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'job', defaultValue: '') String job,
      @JsonKey(name: 'department', defaultValue: '') String department,
      @JsonKey(name: 'profile_path', defaultValue: '') String image,
      @JsonKey(name: 'popularity', defaultValue: 0) double popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      String knownForDepartment});
}

/// @nodoc
class __$$CrewDTOImplCopyWithImpl<$Res>
    extends _$CrewDTOCopyWithImpl<$Res, _$CrewDTOImpl>
    implements _$$CrewDTOImplCopyWith<$Res> {
  __$$CrewDTOImplCopyWithImpl(
      _$CrewDTOImpl _value, $Res Function(_$CrewDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? job = null,
    Object? department = null,
    Object? image = null,
    Object? popularity = null,
    Object? knownForDepartment = null,
  }) {
    return _then(_$CrewDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
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
class _$CrewDTOImpl implements _CrewDTO {
  _$CrewDTOImpl(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'job', defaultValue: '') required this.job,
      @JsonKey(name: 'department', defaultValue: '') required this.department,
      @JsonKey(name: 'profile_path', defaultValue: '') required this.image,
      @JsonKey(name: 'popularity', defaultValue: 0) required this.popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      required this.knownForDepartment});

  factory _$CrewDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrewDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'job', defaultValue: '')
  final String job;
  @override
  @JsonKey(name: 'department', defaultValue: '')
  final String department;
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
    return 'CrewDTO(id: $id, name: $name, job: $job, department: $department, image: $image, popularity: $popularity, knownForDepartment: $knownForDepartment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrewDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                other.knownForDepartment == knownForDepartment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, job, department, image,
      popularity, knownForDepartment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrewDTOImplCopyWith<_$CrewDTOImpl> get copyWith =>
      __$$CrewDTOImplCopyWithImpl<_$CrewDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CrewDTOImplToJson(
      this,
    );
  }
}

abstract class _CrewDTO implements CrewDTO {
  factory _CrewDTO(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'job', defaultValue: '') required final String job,
      @JsonKey(name: 'department', defaultValue: '')
      required final String department,
      @JsonKey(name: 'profile_path', defaultValue: '')
      required final String image,
      @JsonKey(name: 'popularity', defaultValue: 0)
      required final double popularity,
      @JsonKey(name: 'known_for_department', defaultValue: '')
      required final String knownForDepartment}) = _$CrewDTOImpl;

  factory _CrewDTO.fromJson(Map<String, dynamic> json) = _$CrewDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'job', defaultValue: '')
  String get job;
  @override
  @JsonKey(name: 'department', defaultValue: '')
  String get department;
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
  _$$CrewDTOImplCopyWith<_$CrewDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
