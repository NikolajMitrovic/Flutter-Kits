part of '../on_boarding_page.dart';

class _BuildFooter extends StatelessWidget {
  final int index;
  final int dotsCount;
  final VoidCallback onTap;

  const _BuildFooter({
    Key? key,
    required this.index,
    required this.dotsCount,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      bottom: 18,
      left: 18,
      right: 18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () =>Get.toNamed<dynamic>(BellcommerceRoutes.signIn),
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 70,
              height: 45,
              alignment: Alignment.center,
              child: Text(index == 2 ? '' : AppLocalizations.of(context)!.skip,
                  style: theme.textTheme.headlineMedium),
            ),
          ),
          Expanded(
            child: Center(
              child: DotsIndicator(
                dotsCount: dotsCount,
                position: index.toDouble(),
                decorator: DotsDecorator(
                  activeColor: theme.primaryColor,
                  activeSize: const Size(35, 9),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 70,
              height: 40,
              alignment: Alignment.center,
              child: Text(
                index == 2
                    ? AppLocalizations.of(context)!.next
                    : AppLocalizations.of(context)!.done,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
