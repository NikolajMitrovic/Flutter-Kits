
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/barbera/src/helpers/constans.dart';

class BarberaSplashScreen extends StatefulWidget {
  const BarberaSplashScreen({Key? key}) : super(key: key);

  @override
  State<BarberaSplashScreen> createState() => _BarberaSplashScreenState();
}

class _BarberaSplashScreenState extends State<BarberaSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: Const.splashDuration),
      () => Get.offAllNamed<dynamic>(BarberaRoutes.onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SvgPicture.asset(
            Assets.logo,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
