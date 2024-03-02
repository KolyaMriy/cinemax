import 'package:client/core/validator/value_failure/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Password extends Equatable {
  factory Password(String password) => Password._(_validatePassword(password));
  const Password._(this.value);
  final Either<ValueFailure, String> value;

  @override
  List<Object> get props => [value];
}

Either<ValueFailure, String> _validatePassword(String input) {
  if (input.isEmpty || input == ' ') {
    return left(
      ValueFailure.emptyValue(failedValue: input),
    );
  }

  if (input.length <= 8) {
    return left(
      ValueFailure.shortInput(failedValue: input),
    );
  }

  if (!input.contains(RegExp('[A-Z]'))) {
    return left(
      ValueFailure.invalidPasswordFormat(failedValue: input),
    );
  }

  if (!input.contains(RegExp('[0-9]'))) {
    return left(
      ValueFailure.invalidPasswordFormat(failedValue: input),
    );
  }

  return right(input);
}
