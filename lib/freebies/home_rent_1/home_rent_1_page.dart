import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/helpers/theme.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/pages/home.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FreebiesHomeRent1Screen extends StatelessWidget {
  const FreebiesHomeRent1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, snapshot) {
        return MaterialApp(
          title: 'Home Rent',
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
