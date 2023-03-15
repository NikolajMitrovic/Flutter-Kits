import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/shuppy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/shuppy/src/helpers/screens.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class ShuppySplashScreen extends StatefulWidget {
  const ShuppySplashScreen({Key? key}) : super(key: key);

  @override
  State<ShuppySplashScreen> createState() => _ShuppySplashScreenState();
}

class _ShuppySplashScreenState extends State<ShuppySplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.toNamed<dynamic>(ShuppyRoutes.onBoarding),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Image.asset(
          (theme.isDarkTheme) ? Images.logoDark : Images.logoLight,
          width: Screens.width(context) / 2,
          height: Screens.width(context) / 2,
        ),
      ),
    );
  }
}
