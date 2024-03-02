// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_company_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCompanyDTO _$ProductionCompanyDTOFromJson(Map<String, dynamic> json) {
  return _ProductionCompanyDTO.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanyDTO {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country', defaultValue: '')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path', defaultValue: '')
  String get logoImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompanyDTOCopyWith<ProductionCompanyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompanyDTOCopyWith<$Res> {
  factory $ProductionCompanyDTOCopyWith(ProductionCompanyDTO value,
          $Res Function(ProductionCompanyDTO) then) =
      _$ProductionCompanyDTOCopyWithImpl<$Res, ProductionCompanyDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'origin_country', defaultValue: '') String country,
      @JsonKey(name: 'logo_path', defaultValue: '') String logoImage});
}

/// @nodoc
class _$ProductionCompanyDTOCopyWithImpl<$Res,
        $Val extends ProductionCompanyDTO>
    implements $ProductionCompanyDTOCopyWith<$Res> {
  _$ProductionCompanyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? logoImage = null,
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
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      logoImage: null == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompanyDTOImplCopyWith<$Res>
    implements $ProductionCompanyDTOCopyWith<$Res> {
  factory _$$ProductionCompanyDTOImplCopyWith(_$ProductionCompanyDTOImpl value,
          $Res Function(_$ProductionCompanyDTOImpl) then) =
      __$$ProductionCompanyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'origin_country', defaultValue: '') String country,
      @JsonKey(name: 'logo_path', defaultValue: '') String logoImage});
}

/// @nodoc
class __$$ProductionCompanyDTOImplCopyWithImpl<$Res>
    extends _$ProductionCompanyDTOCopyWithImpl<$Res, _$ProductionCompanyDTOImpl>
    implements _$$ProductionCompanyDTOImplCopyWith<$Res> {
  __$$ProductionCompanyDTOImplCopyWithImpl(_$ProductionCompanyDTOImpl _value,
      $Res Function(_$ProductionCompanyDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? logoImage = null,
  }) {
    return _then(_$ProductionCompanyDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      logoImage: null == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompanyDTOImpl extends _ProductionCompanyDTO {
  _$ProductionCompanyDTOImpl(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'origin_country', defaultValue: '') required this.country,
      @JsonKey(name: 'logo_path', defaultValue: '') required this.logoImage})
      : super._();

  factory _$ProductionCompanyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompanyDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'origin_country', defaultValue: '')
  final String country;
  @override
  @JsonKey(name: 'logo_path', defaultValue: '')
  final String logoImage;

  @override
  String toString() {
    return 'ProductionCompanyDTO(id: $id, name: $name, country: $country, logoImage: $logoImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompanyDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.logoImage, logoImage) ||
                other.logoImage == logoImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country, logoImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompanyDTOImplCopyWith<_$ProductionCompanyDTOImpl>
      get copyWith =>
          __$$ProductionCompanyDTOImplCopyWithImpl<_$ProductionCompanyDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompanyDTOImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanyDTO extends ProductionCompanyDTO {
  factory _ProductionCompanyDTO(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'origin_country', defaultValue: '')
      required final String country,
      @JsonKey(name: 'logo_path', defaultValue: '')
      required final String logoImage}) = _$ProductionCompanyDTOImpl;
  _ProductionCompanyDTO._() : super._();

  factory _ProductionCompanyDTO.fromJson(Map<String, dynamic> json) =
      _$ProductionCompanyDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'origin_country', defaultValue: '')
  String get country;
  @override
  @JsonKey(name: 'logo_path', defaultValue: '')
  String get logoImage;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompanyDTOImplCopyWith<_$ProductionCompanyDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
