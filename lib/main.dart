import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/routes.dart';
import 'package:ultimate_bundle/flutima/helpers/themes.dart';
import 'package:ultimate_bundle/flutima/pages/dashboard/dashboard_page.dart';
import 'package:ultimate_bundle/l10n/l10n.dart';
import 'package:ultimate_bundle/providers/locale_provider.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer2<LocaleProvider, ThemeProvider>(
        builder: (context, localeProv, themeProv, snapshot) {
          return GetMaterialApp(
            title: 'Flutima',
            debugShowCheckedModeBanner: false,
            theme: themeLight(context),
            darkTheme: themeDark(context),
            themeMode: (themeProv.isDarkTheme == true)
                ? ThemeMode.dark
                : ThemeMode.light,
            supportedLocales: L10n.all,
            getPages: allRoutesFlutima,
            locale: localeProv.locale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const DashboardScreen(),
          );
        },
      ),
    );
  }
}
