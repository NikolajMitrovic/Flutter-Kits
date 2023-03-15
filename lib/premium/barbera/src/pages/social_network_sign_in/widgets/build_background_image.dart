part of '../social_network_sign_in_page.dart';

class _BuildBackgroundImage extends StatelessWidget {
  const _BuildBackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        Assets.background1,
        fit: BoxFit.cover,
      ),
    );
  }
}
