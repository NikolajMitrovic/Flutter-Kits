 import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/views/home.dart';
 
class FreebiesBarbershop1Screen extends StatelessWidget {
  const FreebiesBarbershop1Screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Barbershop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
