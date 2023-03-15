
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/coffiy/src/helpers/constants.dart';

class CoffiySplashScreen extends StatefulWidget {
  const CoffiySplashScreen({Key? key}) : super(key: key);

  @override
  State<CoffiySplashScreen> createState() => _CoffiySplashScreenState();
}

class _CoffiySplashScreenState extends State<CoffiySplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed<dynamic>(CoffiyRoutes.onBoarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Images.splash,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  CustomIcons.logo,
                ),
                const SizedBox(height: Const.space25),
                Text(
                  'Coffiy',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
