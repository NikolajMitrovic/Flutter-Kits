part of '../on_boarding_page.dart';

class OnBoardingCard extends StatelessWidget {
  final OnBoardingModel? data;

  const OnBoardingCard({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          CustomShakeTransition(
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              data!.image!,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Spacer(),
          CustomShakeTransition(
            child: Text(
              data!.title!,
              style: theme.textTheme.displayLarge,
            ),
          ),
          const SizedBox(height: 25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 900),
            child: Text(
              data!.subtitle!,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
