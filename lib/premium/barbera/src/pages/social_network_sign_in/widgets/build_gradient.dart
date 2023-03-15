part of '../social_network_sign_in_page.dart';


class _BuildGradient extends StatelessWidget {
  const _BuildGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black26,
              Colors.black87,
            ],
          ),
        ),
      ),
    );
  }
}
