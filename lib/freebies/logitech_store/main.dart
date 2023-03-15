import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/logitech_store/views/home.dart';
 
class FreebiesLogitechStoreScreen extends StatelessWidget {
  const FreebiesLogitechStoreScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Logitech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
