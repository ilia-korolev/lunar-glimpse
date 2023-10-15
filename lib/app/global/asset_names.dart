const _basePath = 'assets';

class AssetNames {
  static const animations = _Animations();
}

class _Animations {
  const _Animations();

  static const _animationsPath = '$_basePath/animations';

  String get astronautOnPlanet => '$_animationsPath/astronaut_on_planet.json';
}
