import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = _InvalidEmail;

  const factory ValueFailure.shortInput({
    required String failedValue,
  }) = _ShortInput;

  const factory ValueFailure.invalidPasswordFormat({
    required String failedValue,
  }) = _InvalidPassword;

  const factory ValueFailure.emptyValue({
    required String failedValue,
  }) = _EmptyValue;
}
