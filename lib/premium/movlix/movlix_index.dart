import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

class MovlixSplashScreen extends StatefulWidget {
  const MovlixSplashScreen({Key? key}) : super(key: key);

  @override
  State<MovlixSplashScreen> createState() => _MovlixSplashScreenState();
}

class _MovlixSplashScreenState extends State<MovlixSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), (){
      Get.offAllNamed<dynamic>(MovlixRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Opening Movlix..'),
      ),
    );
  }
}
