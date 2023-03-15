part of '../social_network_page.dart';

class FoodiySignInScreen extends StatelessWidget {
  const FoodiySignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          _BuildBackground(),
          _BuildSocialSignInButton(),
          _BuildSignInEmailButton(),
        ],
      ),
    );
  }
}
