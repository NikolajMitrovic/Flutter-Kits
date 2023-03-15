part of '../ui_detail_page.dart';


class _BuildAppBar extends StatelessWidget {
  const _BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 18,
      top: 18,
      child: InkWell(
        onTap: Get.back,
        child: const CircleAvatar(
          radius: 25,
          backgroundColor : Colors.black45,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
