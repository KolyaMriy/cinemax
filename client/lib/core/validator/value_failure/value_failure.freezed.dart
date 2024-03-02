// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortInput,
    required TResult Function(String failedValue) invalidPasswordFormat,
    required TResult Function(String failedValue) emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortInput,
    TResult? Function(String failedValue)? invalidPasswordFormat,
    TResult? Function(String failedValue)? emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortInput,
    TResult Function(String failedValue)? invalidPasswordFormat,
    TResult Function(String failedValue)? emptyValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortInput value) shortInput,
    required TResult Function(_InvalidPassword value) invalidPasswordFormat,
    required TResult Function(_EmptyValue value) emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_ShortInput value)? shortInput,
    TResult? Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult? Function(_EmptyValue value)? emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortInput value)? shortInput,
    TResult Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<ValueFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res, ValueFailure>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res, $Val extends ValueFailure>
    implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$$InvalidEmailImplCopyWith(
          _$InvalidEmailImpl value, $Res Function(_$InvalidEmailImpl) then) =
      __$$InvalidEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res, _$InvalidEmailImpl>
    implements _$$InvalidEmailImplCopyWith<$Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl _value, $Res Function(_$InvalidEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidEmailImpl(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl implements _InvalidEmail {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<_$InvalidEmailImpl> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<_$InvalidEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortInput,
    required TResult Function(String failedValue) invalidPasswordFormat,
    required TResult Function(String failedValue) emptyValue,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortInput,
    TResult? Function(String failedValue)? invalidPasswordFormat,
    TResult? Function(String failedValue)? emptyValue,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortInput,
    TResult Function(String failedValue)? invalidPasswordFormat,
    TResult Function(String failedValue)? emptyValue,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortInput value) shortInput,
    required TResult Function(_InvalidPassword value) invalidPasswordFormat,
    required TResult Function(_EmptyValue value) emptyValue,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_ShortInput value)? shortInput,
    TResult? Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult? Function(_EmptyValue value)? emptyValue,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortInput value)? shortInput,
    TResult Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements ValueFailure {
  const factory _InvalidEmail({required final String failedValue}) =
      _$InvalidEmailImpl;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<_$InvalidEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortInputImplCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$$ShortInputImplCopyWith(
          _$ShortInputImpl value, $Res Function(_$ShortInputImpl) then) =
      __$$ShortInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ShortInputImplCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res, _$ShortInputImpl>
    implements _$$ShortInputImplCopyWith<$Res> {
  __$$ShortInputImplCopyWithImpl(
      _$ShortInputImpl _value, $Res Function(_$ShortInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ShortInputImpl(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortInputImpl implements _ShortInput {
  const _$ShortInputImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.shortInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortInputImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortInputImplCopyWith<_$ShortInputImpl> get copyWith =>
      __$$ShortInputImplCopyWithImpl<_$ShortInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortInput,
    required TResult Function(String failedValue) invalidPasswordFormat,
    required TResult Function(String failedValue) emptyValue,
  }) {
    return shortInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortInput,
    TResult? Function(String failedValue)? invalidPasswordFormat,
    TResult? Function(String failedValue)? emptyValue,
  }) {
    return shortInput?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortInput,
    TResult Function(String failedValue)? invalidPasswordFormat,
    TResult Function(String failedValue)? emptyValue,
    required TResult orElse(),
  }) {
    if (shortInput != null) {
      return shortInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortInput value) shortInput,
    required TResult Function(_InvalidPassword value) invalidPasswordFormat,
    required TResult Function(_EmptyValue value) emptyValue,
  }) {
    return shortInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_ShortInput value)? shortInput,
    TResult? Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult? Function(_EmptyValue value)? emptyValue,
  }) {
    return shortInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortInput value)? shortInput,
    TResult Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) {
    if (shortInput != null) {
      return shortInput(this);
    }
    return orElse();
  }
}

abstract class _ShortInput implements ValueFailure {
  const factory _ShortInput({required final String failedValue}) =
      _$ShortInputImpl;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortInputImplCopyWith<_$ShortInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPasswordImplCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$$InvalidPasswordImplCopyWith(_$InvalidPasswordImpl value,
          $Res Function(_$InvalidPasswordImpl) then) =
      __$$InvalidPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$InvalidPasswordImplCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res, _$InvalidPasswordImpl>
    implements _$$InvalidPasswordImplCopyWith<$Res> {
  __$$InvalidPasswordImplCopyWithImpl(
      _$InvalidPasswordImpl _value, $Res Function(_$InvalidPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$InvalidPasswordImpl(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidPasswordImpl implements _InvalidPassword {
  const _$InvalidPasswordImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.invalidPasswordFormat(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPasswordImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidPasswordImplCopyWith<_$InvalidPasswordImpl> get copyWith =>
      __$$InvalidPasswordImplCopyWithImpl<_$InvalidPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortInput,
    required TResult Function(String failedValue) invalidPasswordFormat,
    required TResult Function(String failedValue) emptyValue,
  }) {
    return invalidPasswordFormat(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortInput,
    TResult? Function(String failedValue)? invalidPasswordFormat,
    TResult? Function(String failedValue)? emptyValue,
  }) {
    return invalidPasswordFormat?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortInput,
    TResult Function(String failedValue)? invalidPasswordFormat,
    TResult Function(String failedValue)? emptyValue,
    required TResult orElse(),
  }) {
    if (invalidPasswordFormat != null) {
      return invalidPasswordFormat(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortInput value) shortInput,
    required TResult Function(_InvalidPassword value) invalidPasswordFormat,
    required TResult Function(_EmptyValue value) emptyValue,
  }) {
    return invalidPasswordFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_ShortInput value)? shortInput,
    TResult? Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult? Function(_EmptyValue value)? emptyValue,
  }) {
    return invalidPasswordFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortInput value)? shortInput,
    TResult Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) {
    if (invalidPasswordFormat != null) {
      return invalidPasswordFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassword implements ValueFailure {
  const factory _InvalidPassword({required final String failedValue}) =
      _$InvalidPasswordImpl;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPasswordImplCopyWith<_$InvalidPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyValueImplCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$$EmptyValueImplCopyWith(
          _$EmptyValueImpl value, $Res Function(_$EmptyValueImpl) then) =
      __$$EmptyValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$EmptyValueImplCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res, _$EmptyValueImpl>
    implements _$$EmptyValueImplCopyWith<$Res> {
  __$$EmptyValueImplCopyWithImpl(
      _$EmptyValueImpl _value, $Res Function(_$EmptyValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$EmptyValueImpl(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyValueImpl implements _EmptyValue {
  const _$EmptyValueImpl({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.emptyValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyValueImpl &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyValueImplCopyWith<_$EmptyValueImpl> get copyWith =>
      __$$EmptyValueImplCopyWithImpl<_$EmptyValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortInput,
    required TResult Function(String failedValue) invalidPasswordFormat,
    required TResult Function(String failedValue) emptyValue,
  }) {
    return emptyValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidEmail,
    TResult? Function(String failedValue)? shortInput,
    TResult? Function(String failedValue)? invalidPasswordFormat,
    TResult? Function(String failedValue)? emptyValue,
  }) {
    return emptyValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortInput,
    TResult Function(String failedValue)? invalidPasswordFormat,
    TResult Function(String failedValue)? emptyValue,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_ShortInput value) shortInput,
    required TResult Function(_InvalidPassword value) invalidPasswordFormat,
    required TResult Function(_EmptyValue value) emptyValue,
  }) {
    return emptyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail value)? invalidEmail,
    TResult? Function(_ShortInput value)? shortInput,
    TResult? Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult? Function(_EmptyValue value)? emptyValue,
  }) {
    return emptyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_ShortInput value)? shortInput,
    TResult Function(_InvalidPassword value)? invalidPasswordFormat,
    TResult Function(_EmptyValue value)? emptyValue,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(this);
    }
    return orElse();
  }
}

abstract class _EmptyValue implements ValueFailure {
  const factory _EmptyValue({required final String failedValue}) =
      _$EmptyValueImpl;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyValueImplCopyWith<_$EmptyValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
