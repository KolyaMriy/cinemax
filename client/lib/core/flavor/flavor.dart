enum Flavor { prod, dev }

extension FlavorX on Flavor {
  String name() {
    switch (this) {
      case Flavor.prod:
        return 'PROD';
      case Flavor.dev:
        return 'DEV';
    }
  }
}
