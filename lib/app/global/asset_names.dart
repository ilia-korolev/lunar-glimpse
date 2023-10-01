const _basePath = 'assets';

class AssetNames {
  static const animations = _Animations();
}

class _Animations {
  const _Animations();

  static const _animationsPath = '$_basePath/animations';

  String get spaceCoffee => '$_animationsPath/space_coffee.riv';
  String get spaceCoffeeAlt => '$_animationsPath/space_coffee_alt.riv';
  String get octopusLoop => '$_animationsPath/octopus_loop.riv';
  String get astronautInMug => '$_animationsPath/astronaut_in_mug.json';
  String get astronautOnPlanet => '$_animationsPath/astronaut_on_planet.json';
}
