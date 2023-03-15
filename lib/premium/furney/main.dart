import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/furney/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/furney/src/helpers/screens.dart';

class FurneySplashScreen extends StatefulWidget {
  const FurneySplashScreen({Key? key}) : super(key: key);
  @override
  State<FurneySplashScreen> createState() => _FurneySplashScreenState();
}

class _FurneySplashScreenState extends State<FurneySplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed<dynamic>(FurneyRoutes.onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              CustomIcon.logo,
              width: Screens.width(context) / 2,
              height: Screens.width(context) / 2,
            ),
          ],
        ),
      ),
    );
  }
}
