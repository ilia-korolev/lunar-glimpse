import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/models/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/// A widget that updates the system navigation bar
/// according to the system brightness and the current app theme
class SystemNavBarUpdater extends StatefulWidget {
  const SystemNavBarUpdater({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<SystemNavBarUpdater> createState() => _SystemNavBarUpdaterState();
}

class _SystemNavBarUpdaterState extends State<SystemNavBarUpdater>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final themeMode = context.read<AppSettingsCubit>().state.themeMode;

      _updateNavBarByThemeMode(themeMode);
    });

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    _updateNavBarBySystemBrightness();

    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppSettingsCubit, AppSettings>(
      listenWhen: (previous, current) {
        return previous.themeMode != current.themeMode;
      },
      listener: (context, settings) {
        _updateNavBarByThemeMode(settings.themeMode);
      },
      child: widget.child,
    );
  }

  void _updateNavBarBySystemBrightness() {
    final brightness = PlatformDispatcher.instance.platformBrightness;
    final theming = GetIt.instance<Theming>();
    final theme = theming.resolveBrightness(brightness);

    _updateNavBar(theme);
  }

  void _updateNavBarByThemeMode(ThemeMode mode) {
    final theming = GetIt.instance<Theming>();
    final theme = theming.resolveMode(mode);
    _updateNavBar(theme);
  }

  void _updateNavBar(ThemeData theme) {
    final color = ElevationOverlay.applySurfaceTint(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceTint,
      3,
    );

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: color,
        systemNavigationBarIconBrightness: _reverseBrightness(theme.brightness),
      ),
    );
  }

  Brightness _reverseBrightness(Brightness brightness) {
    switch (brightness) {
      case Brightness.light:
        return Brightness.dark;
      case Brightness.dark:
        return Brightness.light;
    }
  }
}
