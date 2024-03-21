import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError() = _ServerError;
  const factory Failure.parseError() = _ParseError;
  const factory Failure.noInternetConnection() = _NoInternetConnection;
}
