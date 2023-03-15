import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/views/home.dart';

class FreebiesBakeryStore1Screen extends StatelessWidget {
  const FreebiesBakeryStore1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bakery demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
