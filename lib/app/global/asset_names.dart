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

  String get ch => '$_path/cn.svg';
  String get jp => '$_path/jp.svg';
  String get ru => '$_path/ru.svg';
  String get us => '$_path/us.svg';
}
