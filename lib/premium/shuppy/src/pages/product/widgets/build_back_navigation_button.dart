part of '../product_page.dart';

class _BuildBackNavigationButton extends StatelessWidget {
  const _BuildBackNavigationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Const.margin,
      left: Const.margin,
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () => Get.back<dynamic>(),
        child: const CircleAvatar(
          radius: 20,
          backgroundColor : Colors.black45,
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
    );
  }
}
