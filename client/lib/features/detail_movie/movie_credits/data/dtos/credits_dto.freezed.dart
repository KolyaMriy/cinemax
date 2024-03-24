// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credits_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditsDTO _$CreditsDTOFromJson(Map<String, dynamic> json) {
  return _CreditsDTO.fromJson(json);
}

/// @nodoc
mixin _$CreditsDTO {
  @HiveField(1)
  @JsonKey(name: 'cast', defaultValue: [])
  List<CastDTO> get cast => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'crew', defaultValue: [])
  List<CrewDTO> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsDTOCopyWith<CreditsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsDTOCopyWith<$Res> {
  factory $CreditsDTOCopyWith(
          CreditsDTO value, $Res Function(CreditsDTO) then) =
      _$CreditsDTOCopyWithImpl<$Res, CreditsDTO>;
  @useResult
  $Res call(
      {@HiveField(1)
      @JsonKey(name: 'cast', defaultValue: [])
      List<CastDTO> cast,
      @HiveField(2)
      @JsonKey(name: 'crew', defaultValue: [])
      List<CrewDTO> crew});
}

/// @nodoc
class _$CreditsDTOCopyWithImpl<$Res, $Val extends CreditsDTO>
    implements $CreditsDTOCopyWith<$Res> {
  _$CreditsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastDTO>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<CrewDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditsDTOImplCopyWith<$Res>
    implements $CreditsDTOCopyWith<$Res> {
  factory _$$CreditsDTOImplCopyWith(
          _$CreditsDTOImpl value, $Res Function(_$CreditsDTOImpl) then) =
      __$$CreditsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1)
      @JsonKey(name: 'cast', defaultValue: [])
      List<CastDTO> cast,
      @HiveField(2)
      @JsonKey(name: 'crew', defaultValue: [])
      List<CrewDTO> crew});
}

/// @nodoc
class __$$CreditsDTOImplCopyWithImpl<$Res>
    extends _$CreditsDTOCopyWithImpl<$Res, _$CreditsDTOImpl>
    implements _$$CreditsDTOImplCopyWith<$Res> {
  __$$CreditsDTOImplCopyWithImpl(
      _$CreditsDTOImpl _value, $Res Function(_$CreditsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$CreditsDTOImpl(
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<CastDTO>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<CrewDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditsDTOImpl implements _CreditsDTO {
  _$CreditsDTOImpl(
      {@HiveField(1)
      @JsonKey(name: 'cast', defaultValue: [])
      required final List<CastDTO> cast,
      @HiveField(2)
      @JsonKey(name: 'crew', defaultValue: [])
      required final List<CrewDTO> crew})
      : _cast = cast,
        _crew = crew;

  factory _$CreditsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditsDTOImplFromJson(json);

  final List<CastDTO> _cast;
  @override
  @HiveField(1)
  @JsonKey(name: 'cast', defaultValue: [])
  List<CastDTO> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<CrewDTO> _crew;
  @override
  @HiveField(2)
  @JsonKey(name: 'crew', defaultValue: [])
  List<CrewDTO> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'CreditsDTO(cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditsDTOImpl &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditsDTOImplCopyWith<_$CreditsDTOImpl> get copyWith =>
      __$$CreditsDTOImplCopyWithImpl<_$CreditsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditsDTOImplToJson(
      this,
    );
  }
}

abstract class _CreditsDTO implements CreditsDTO {
  factory _CreditsDTO(
      {@HiveField(1)
      @JsonKey(name: 'cast', defaultValue: [])
      required final List<CastDTO> cast,
      @HiveField(2)
      @JsonKey(name: 'crew', defaultValue: [])
      required final List<CrewDTO> crew}) = _$CreditsDTOImpl;

  factory _CreditsDTO.fromJson(Map<String, dynamic> json) =
      _$CreditsDTOImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: 'cast', defaultValue: [])
  List<CastDTO> get cast;
  @override
  @HiveField(2)
  @JsonKey(name: 'crew', defaultValue: [])
  List<CrewDTO> get crew;
  @override
  @JsonKey(ignore: true)
  _$$CreditsDTOImplCopyWith<_$CreditsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
