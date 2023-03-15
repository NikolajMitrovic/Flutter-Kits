part of '../on_boarding_page.dart';

class _BuildBody extends StatelessWidget {
  final PageController controller;
  final ValueChanged<int>? onPageChanged;

  const _BuildBody({
    Key? key,
    required this.controller,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned.fill(
      bottom: 50,
      child: PageView.builder(
        controller: controller,
        itemCount: onBoardingMockList(context).length,
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final data = onBoardingMockList(context)[index];
          return Column(
            children: [
              Expanded(
                flex: 6,
                child: Image.asset(
                  data.image ?? '',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: Const.space25 * 2),
                      Text(
                        data.title ?? '',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.displayLarge,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        data.subtitle ?? '',
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
