part of '../onboarding7_page.dart';


class _FooterSection extends StatelessWidget {
  final Color cardColor;
  final int currentIndex;
  final Color primaryColor;
  final VoidCallback? onNextTap;

  const _FooterSection({
    Key? key,
    required this.cardColor,
    required this.currentIndex,
    required this.primaryColor,
    this.onNextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      left: 0,
      bottom: 0,
      right: 0,
      height:319,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(Const.margin),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(Const.radius25),
                  topLeft: Radius.circular(Const.radius25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Const.space25),
                  ShakeTransition(
                    duration: const Duration(milliseconds: 800),
                    child: AutoSizeText(
                      OnBoardingList.onBoarding7List(context)[currentIndex]
                          .title!,
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontSize: 25,
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: Const.space12),
                  ShakeTransition(
                    duration: const Duration(milliseconds: 900),
                    child: AutoSizeText(
                      OnBoardingList.onBoarding7List(context)[currentIndex]
                          .subtitle!,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomDotsIndicator(
                        color: primaryColor,
                        dotsCount: OnBoardingList.onBoarding5List(
                          context,
                        ),
                        position: currentIndex,
                      ),
                      InkWell(    
                        onTap: onNextTap,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor : primaryColor,
                          child: Icon(
                            Icons.arrow_forward,
                            color: cardColor,
                            size: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
