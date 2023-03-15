part of '../forgot_password_success_page.dart';

class FurneyForgotPasswordSuccessScreen extends StatelessWidget { 

  const FurneyForgotPasswordSuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _BuildIconSuccess(),
                SizedBox(height: Screens.width(context) / 7),
                _BodySection(),
                SizedBox(height: Screens.width(context) / 5),
                _BuildSignInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
