import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/freebies/furniture_1/helpers/themes.dart';
import 'package:ultimate_bundle/freebies/furniture_1/pages/home/home_page.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FreebiesFurniture1Screen extends StatelessWidget {
  const FreebiesFurniture1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, snapshot) {
        return MaterialApp(
          title: 'Furney',
          theme: themeLight(context),
          darkTheme: themeDark(context),
          themeMode:
              (theme.isDarkTheme == true) ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
        );
      },
    );
  }
}
