import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/helpers/theme.dart';
import 'package:ultimate_bundle/freebies/doctor_consultation_1/views/home.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FreebiesDoctorConsultation1Screen extends StatelessWidget {
  const FreebiesDoctorConsultation1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, theme, snapshot) {
        return MaterialApp(
          title: 'Doctor Consultation',
          theme: themeLight(context),
          darkTheme: themeDark(context),
          themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
        );
      },
    );
  }
}
