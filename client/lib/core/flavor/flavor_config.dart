import 'package:client/core/flavor/flavor.dart';

class FlavorConfig {
  final Flavor _flavor;
  final FlavorValues _values;

  FlavorConfig({
    required Flavor flavor,
    required FlavorValues values,
  })  : _flavor = flavor,
        _values = values;

  String envName() => _flavor.name();

  bool isProd() => _flavor == Flavor.prod;

  bool isDev() => _flavor == Flavor.dev;
}

class FlavorValues {
  /// To be added with enum keys
}
