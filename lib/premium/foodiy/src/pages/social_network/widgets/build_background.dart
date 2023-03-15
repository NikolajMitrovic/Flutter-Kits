part of '../social_network_page.dart';

class _BuildBackground extends StatelessWidget {
  const _BuildBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Const.wallpaper),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.black45,
                Colors.black,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
