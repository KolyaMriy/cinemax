import 'package:get_it/get_it.dart';

class DependencyProvider {
  static final GetIt _di = GetIt.instance;

  static bool isRegistered<T extends Object>(
      {Object? instance, String? instanceName}) {
    return _di.isRegistered(instance: instance, instanceName: instanceName);
  }

  static T get<T extends Object>({String? instanceName}) {
    return _di.get<T>(instanceName: instanceName);
  }

  static T getWithParams<T extends Object, P1, P2>({
    String? instanceName,
    P1? param1,
    P2? param2,
  }) {
    return _di.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
  }

  static void registerSingleton<T extends Object>(T instance,
      {String? instanceName}) {
    _di.registerSingleton(instance, instanceName: instanceName);
  }

  static void registerLazySingleton<T extends Object>(T Function() factory,
      {String? instanceName}) {
    _di.registerLazySingleton(factory, instanceName: instanceName);
  }

  static void registerFactory<T extends Object>(T Function() factory,
      {String? instanceName}) {
    _di.registerFactory(factory, instanceName: instanceName);
  }

  static void unregister<T extends Object>(T instance, {String? instanceName}) {
    if (!_di.isRegistered<T>(instance: instance)) return;
    _di.unregister<T>(instance: instance, instanceName: instanceName);
  }

  static Future<void> reset() async {
    await _di.reset();
  }

  static void registerFactoryWithParams<T extends Object, P1, P2>(
    T Function(P1, P2) factory, {
    String? instanceName,
  }) {
    _di.registerFactoryParam(factory, instanceName: instanceName);
  }
}
