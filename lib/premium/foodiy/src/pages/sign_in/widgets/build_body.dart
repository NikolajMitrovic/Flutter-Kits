part of '../sign_in_page.dart';

class _BuildBody extends StatelessWidget {
  final Widget child;
  final Widget button;

  const _BuildBody({
    Key? key,
    required this.button,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 480,
      child: Stack(
        children: [
          ClipPath(
            clipper: BottomContainerClipper(),
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                Const.margin,
                50,
                Const.margin,
                0,
              ),
              color: ColorLight.primary,
              child: child,
            ),
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 0,
            child: button,
          ),
        ],
      ),
    );
  }
}
