part of '../on_boarding_page.dart';

class _OnBoardingCard extends StatelessWidget {
  const _OnBoardingCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final OnBoardingModel data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            data.image!,
            width: Screens.width(context) / 2,
            height: Screens.width(context) / 2,
          ),
          SizedBox(height: Screens.width(context) / 5),
          Text(
            data.title!,
            style: theme.textTheme.displayLarge,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Screens.width(context) / 15),
          Text(
            data.subtitle!,
            style: theme.textTheme.titleMedium,
            maxLines: 3,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Screens.width(context) / 5),
        ],
      ),
    );
  }
}
