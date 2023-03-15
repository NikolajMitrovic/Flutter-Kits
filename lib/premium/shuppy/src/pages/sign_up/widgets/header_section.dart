part of '../sign_up_page.dart';

class _HeaderSection extends StatelessWidget {
  final String image;

  const _HeaderSection({Key? key,required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 7,
      height: MediaQuery.of(context).size.width / 7,
      child: CustomShakeTransition(
        axis: Axis.vertical,
        child: Image.asset(image
        ),
      ),
    );
  }
}
