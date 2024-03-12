import 'package:flutter/foundation.dart';

enum Platform {
  android,
  fuchsia,
  iOS,
  linux,
  macOS,
  windows,
  web;

  static Platform get current {
    if (kIsWeb) {
      return web;
    }

    return switch (defaultTargetPlatform) {
      TargetPlatform.android => Platform.android,
      TargetPlatform.fuchsia => Platform.fuchsia,
      TargetPlatform.iOS => Platform.iOS,
      TargetPlatform.linux => Platform.linux,
      TargetPlatform.macOS => Platform.macOS,
      TargetPlatform.windows => Platform.windows,
    };
  }

  static bool get isAndroid => current == Platform.android;
  static bool get isFuchsia => current == Platform.fuchsia;
  static bool get isIOS => current == Platform.iOS;
  static bool get isLinux => current == Platform.linux;
  static bool get isMacOS => current == Platform.macOS;
  static bool get isWindows => current == Platform.windows;
  static bool get isWeb => current == Platform.web;
}
