import 'package:client/core/validator/value_failure/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class EmailAddress extends Equatable {
  factory EmailAddress(String email) => EmailAddress._(_validateEmail(email));
  const EmailAddress._(this.value);
  final Either<ValueFailure, String> value;

  @override
  List<Object> get props => [value];
}

Either<ValueFailure, String> _validateEmail(String input) {
  if (input.isEmpty) {
    return left(
      ValueFailure.emptyValue(failedValue: input),
    );
  }
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidEmail(failedValue: input),
    );
  }
}
