import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/job_finder_1/screens/home.dart';

class FreebiesJobFinder1Screen extends StatelessWidget {
  const FreebiesJobFinder1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find Job',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
