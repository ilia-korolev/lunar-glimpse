const _basePath = 'assets';

class AssetNames {
  static const animations = _Animations();
}

class _Animations {
  const _Animations();

  static const _animationsPath = '$_basePath/animations';

  String get astronautDeveloper => '$_animationsPath/astronaut_developer.json';
  String get astronautAndRocket => '$_animationsPath/astronaut_and_rocket.json';
  String get astronautOnPlanet => '$_animationsPath/astronaut_on_planet.json';
}
