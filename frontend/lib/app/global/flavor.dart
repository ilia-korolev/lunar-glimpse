abstract interface class Flavor {
  factory Flavor.fromEnvironment() {
    const appFlavor = String.fromEnvironment('FLAVOR');

    return switch (appFlavor) {
      'development' => const DevelopmentFlavor(),
      'production' => const ProductionFlavor(),
      _ => throw UnsupportedError('The flavor is not supported: $appFlavor')
    };
  }

  String get apiUrl;
}

class DevelopmentFlavor implements Flavor {
  const DevelopmentFlavor();

  @override
  String get apiUrl => 'http://localhost:8080';
}

class ProductionFlavor implements Flavor {
  const ProductionFlavor();

  @override
  String get apiUrl => 'https://lunarglimpse.com/api';
}
