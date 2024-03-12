const _basePath = 'assets';

class AssetNames {
  static const animations = _Animations();
  static const flags = _Flags();
}

class _Animations {
  const _Animations();

  static const _path = '$_basePath/animations';

  String get astronautDeveloper => '$_path/astronaut_developer.json';
  String get astronautAndRocket => '$_path/astronaut_and_rocket.json';
  String get astronautOnPlanet => '$_path/astronaut_on_planet.json';
}

class _Flags {
  const _Flags();

  static const _path = '$_basePath/flags';

  String get ch => '$_path/cn.png';
  String get jp => '$_path/jp.png';
  String get ru => '$_path/ru.png';
  String get us => '$_path/us.png';
}
