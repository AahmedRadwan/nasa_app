import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nasa_app/utils/constants.dart';

import '../../../generated/l10n.dart';
import '../../../utils/AppRouter.dart';
import '../../../utils/color_schemes.g.dart';
import '../../../utils/typography.dart';

class NasaApp extends StatelessWidget {
  const NasaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(LocalDBConstant.hiveBox).listenable(),
      builder: (context, box, widget) {
        var darkMode = box.get(LocalDBConstant.darkMode, defaultValue: false);
        String localization =
            box.get(LocalDBConstant.localizationMode, defaultValue: 'en');
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          locale: Locale(localization),
          theme: ThemeData(
            textTheme: textTheme,
            colorScheme: lightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            textTheme: textTheme,
            colorScheme: darkColorScheme,
            useMaterial3: true,
          ),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        );
      },
    );
  }
}
