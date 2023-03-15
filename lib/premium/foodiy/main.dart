import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';

class FoodiySplashScreen extends StatefulWidget {
  const FoodiySplashScreen({Key? key}) : super(key: key);
  @override
  State<FoodiySplashScreen> createState() => _FoodiySplashScreenState();
}

class _FoodiySplashScreenState extends State<FoodiySplashScreen> {
  void startSplashScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed<dynamic>(FoodiyRoutes.onboarding),
    );
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.redAccent,
      body: Center(
        child: Image.asset(Const.logo),
      ),
    );
  }

}
