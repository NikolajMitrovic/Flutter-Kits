import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

class BelilaSplashScreen extends StatefulWidget {
  const BelilaSplashScreen({Key? key}) : super(key: key);

  @override
  State<BelilaSplashScreen> createState() => BelilaSplashScreenState();
}

class BelilaSplashScreenState extends State<BelilaSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAllNamed<dynamic>(BelilaRoutes.onBoarding),
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
