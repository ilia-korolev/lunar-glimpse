import 'package:flutter/services.dart' as services;

abstract interface class Flavor {
  factory Flavor.fromEnvironment() {
    const appFlavor = services.appFlavor;

    return switch (appFlavor) {
      'development' => const DevelopmentFlavor(),
      'production' => const ProductionFlavor(),
      _ => throw UnsupportedError('The flavor is not supported: $appFlavor')
    };
  }

  String get galleryApiUrl;
}

class DevelopmentFlavor implements Flavor {
  const DevelopmentFlavor();

  @override
  String get galleryApiUrl => 'http://localhost:8080';
}

class ProductionFlavor implements Flavor {
  const ProductionFlavor();

  @override
  String get galleryApiUrl => 'https://lunarglimpse.com/api';
}
