import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/evite/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/evite/views/home.dart';

class FreebiesEviteScreen extends StatelessWidget {
  const FreebiesEviteScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kOrangeColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
