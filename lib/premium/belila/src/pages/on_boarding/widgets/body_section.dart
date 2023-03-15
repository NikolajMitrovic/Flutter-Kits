part of '../on_boarding_page.dart';

class _BodySection extends StatelessWidget {
  final PageController? controller;
  final ValueChanged<int>? onPageChanged;
  final List<OnBoardingModel>? itemCount;

  const _BodySection({
    Key? key,
    this.controller,
    this.onPageChanged,
    this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Const.margin + 80,
      left: Const.margin,
      right: Const.margin,
      bottom: 150,
      child: PageView.builder(
        controller: controller,
        itemCount: itemCount?.length,
        onPageChanged: onPageChanged,
        physics:const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = itemCount?[index];
          return _OnBoardingContent(item: item);
        },
      ),
    );
  }
}
