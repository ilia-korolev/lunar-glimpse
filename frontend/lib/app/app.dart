import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frontend/app/_export.dart';
import 'package:frontend/domain/models/_export.dart';
import 'package:frontend/presentation/_export.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // wait for all async singletons
      future: GetIt.instance.allReady(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          // TODO(ilia-korolev): change this to something more suitable
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return SystemNavBarUpdater(
          child: BlocBuilder<AppSettingsCubit, AppSettings>(
            builder: (context, settings) {
              return MaterialApp.router(
                scaffoldMessengerKey: GetIt.instance(),
                routerConfig: Routing.appRouter,
                title: 'Lunar Glimpse',
                theme: GetIt.instance<Theming>().light,
                darkTheme: GetIt.instance<Theming>().dark,
                themeMode: settings.themeMode,
                locale: settings.locale,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
              );
            },
          ),
        );
      },
    );
  }
}
