part of '../on_boarding_page.dart';


class _BuildFooter extends StatelessWidget {
  const _BuildFooter({
    Key? key,
    required this.currentIndex,
    required this.pageController,
  }) : super(key: key);

  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      left: 0,
      right: 0,
      bottom: Const.space25,
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              onTap: () => Get.offAllNamed<dynamic>(BarberaRoutes.socialNetwork),
              label: AppLocalizations.of(context)!.skip,
            ),
          ),
          Expanded(
            child: CustomDotsIndicator(
              position: currentIndex.toDouble(),
              itemCount: onBoardingMockList(context).length,
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                if (currentIndex == 2) {
                  Get.offAllNamed<dynamic>(BarberaRoutes.socialNetwork);
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                  );
                }
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor : theme.primaryColor,
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
