import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract interface class ConnectionChecker {
  Future<bool> get isConnected;
}

class ConnectionCheckerImpl implements ConnectionChecker {
  final InternetConnection _internetConnection;

  ConnectionCheckerImpl({
    required InternetConnection internetConnection,
  }) : _internetConnection = internetConnection;

  @override
  Future<bool> get isConnected async {
    final results = await _internetConnection.hasInternetAccess;
    return results;
  }
}
