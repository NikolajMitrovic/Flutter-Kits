import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

class OnBoardingSplashScreen extends StatefulWidget {
  const OnBoardingSplashScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingSplashScreen> createState() => _OnBoardingSplashScreenState();
}

class _OnBoardingSplashScreenState extends State<OnBoardingSplashScreen> {
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
        child: Text('Opening On Boarding..'),
      ),
    );
  }
}
