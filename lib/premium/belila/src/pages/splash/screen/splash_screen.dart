part of '../splash_page.dart';
 

class BelilaSplashScreen extends StatefulWidget {
  const BelilaSplashScreen({ Key? key }) : super(key: key);

  @override
  State<BelilaSplashScreen> createState() => _BelilaSplashScreenState();
}

class _BelilaSplashScreenState extends State<BelilaSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      Get.offAllNamed<dynamic>(BelilaRoutes.onBoarding);
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading..'),
      ),
    );
  }
}
