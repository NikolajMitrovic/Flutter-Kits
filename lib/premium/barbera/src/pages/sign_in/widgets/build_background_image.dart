part of '../sign_in_page.dart';

class _BuildBackgroundImage extends StatelessWidget {
  const _BuildBackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: 250,
      child: Image.asset(
        Assets.signIn,
        fit: BoxFit.cover,
      ),
    );
  }
}
