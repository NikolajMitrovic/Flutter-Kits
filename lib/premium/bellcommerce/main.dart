// ignore_for_file: depend_on_referenced_packages

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/helpers/constants.dart';

class BellcommerceSplashScreen extends StatelessWidget {
  const BellcommerceSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Assets.logo,
      nextScreen: _BuildSplashScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 1000,
      animationDuration: const Duration(milliseconds: 1500),
    );
  }
}

class _BuildSplashScreen extends StatefulWidget {
  @override
  State<_BuildSplashScreen> createState() => __BuildSplashScreenState();
}

class __BuildSplashScreenState extends State<_BuildSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        Get.offAllNamed<dynamic>(BellcommerceRoutes.onboarding);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Byneet Dev',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
