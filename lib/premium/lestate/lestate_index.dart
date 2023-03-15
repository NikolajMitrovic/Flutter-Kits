import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

class LestateSplashScreen extends StatefulWidget {
  const LestateSplashScreen({Key? key}) : super(key: key);

  @override
  State<LestateSplashScreen> createState() => LestateSplashScreenState();
}

class LestateSplashScreenState extends State<LestateSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAllNamed<dynamic>(LestateRoutes.onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.of(context)!.please_wait),
      ),
    );
  }
}
