import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/helpers/themes.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/pages/bottom_navigation_bar/bottom_navigation_bar_page.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FreebiesEcommerce1Screen extends StatelessWidget {
  const FreebiesEcommerce1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, snapshot) {
        return MaterialApp(
          title: 'TRESHOP',
          theme: themeLight(context),
          darkTheme: themeDark(context),
          themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const BottomNavigationBarScreen(),
        );
      },
    );
  }
}
