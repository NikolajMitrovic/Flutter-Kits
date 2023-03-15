part of '../on_boarding_page.dart';

class _BuildBody extends StatelessWidget {
  final PageController controller;
  final List<OnBoardingModel> itemList;
  final ValueChanged<int>? onPageChanged;

  const _BuildBody({
    Key? key,
    required this.controller,
    required this.itemList,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      top: 100,
      left: Const.margin,
      right: Const.margin,
      bottom: 100,
      child: PageView.builder(
        controller: controller,
        itemCount: itemList.length,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Column(
            children: [
              Image.asset(item.image!),
              const SizedBox(height: 15),
              Text(
                item.title!,
                style: theme.textTheme.displayLarge!.copyWith(fontSize: 25),
              ),
              const SizedBox(height: 15),
              Text(
                item.subtitle!,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
