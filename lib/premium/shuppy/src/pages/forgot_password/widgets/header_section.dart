part of '../forgot_password_page.dart';

class _HeaderSection extends StatelessWidget {
  final String image;

  const _HeaderSection({Key? key,required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomShakeTransition(
        axis: Axis.vertical,
        child: Image.asset(image
        ),
      ),
    );
  }
}
