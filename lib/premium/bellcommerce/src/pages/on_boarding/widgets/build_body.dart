part of '../on_boarding_page.dart';

class _BuildBody extends StatelessWidget {
  final List<OnBoardingModel> itemList;
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  const _BuildBody({
    Key? key,
    required this.itemList,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      child: PageView.builder(
        itemCount: itemList.length,
        controller: controller,
        onPageChanged: onPageChanged,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 5,
            ),
            width: double.infinity,
            height: 250,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Image.asset(
                  item.image!,
                  width: MediaQuery.of(context).size.height / 2,
                ),
                const SizedBox(height: 15),
                Text(
                  item.title!,
                  style: theme.textTheme.displaySmall!.copyWith(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  item.subtitle!,
                  style: theme.textTheme.titleMedium!.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
