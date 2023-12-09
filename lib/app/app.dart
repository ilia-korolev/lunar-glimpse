import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:flutter_astronomy/domain/models/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
                // TODO(ilia-korolev): change the title
                title: 'Flutter Demo',
                theme: GetIt.instance<Theming>().light,
                darkTheme: GetIt.instance<Theming>().dark,
                themeMode: settings.themeMode,
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
