import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/domain/models/_export.dart';
import 'package:frontend/presentation/_export.dart';
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
  final _appSettingsCubit = GetIt.instance<AppSettingsCubit>();

  @override
  void initState() {
    final themeMode = _appSettingsCubit.state.themeMode;
    _updateNavBarByThemeMode(themeMode);

    WidgetsBinding.instance.addObserver(this);

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
    return BlocProvider<AppSettingsCubit>.value(
      value: _appSettingsCubit,
      child: BlocListener<AppSettingsCubit, AppSettings>(
        listenWhen: (previous, current) {
          return previous.themeMode != current.themeMode;
        },
        listener: (context, settings) {
          _updateNavBarByThemeMode(settings.themeMode);
        },
        child: widget.child,
      ),
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: theme.colorScheme.surfaceContainer,
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
