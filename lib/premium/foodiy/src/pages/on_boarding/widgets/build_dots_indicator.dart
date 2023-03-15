part of '../on_boarding_page.dart';

class _BuildDotsIndicator extends StatelessWidget {
  final List<OnBoardingModel> itemList;
  final double position;

  const _BuildDotsIndicator({
    Key? key,
    required this.itemList,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 150,
      left: 0,
      right: 0,
      child: Center(
        child: DotsIndicator(
          dotsCount: itemList.length,
          position: position.toDouble(),
          decorator: DotsDecorator(
            activeColor: Theme.of(context).primaryColor,
            activeSize: const Size(18, 9),
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}
