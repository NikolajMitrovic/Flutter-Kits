part of '../barbershop_page.dart';

class _BuildScrollableBarber extends StatelessWidget {
  const _BuildScrollableBarber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
          ),
          child: Text(
            AppLocalizations.of(context)!.barber_specialist,
            style: theme.textTheme.displaySmall,
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: Screens.width(context),
          height: 110,
          child: ListView.builder(
            itemCount: topBarberList.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: Const.margin,
            ),
            itemBuilder: (context, index) {
              final barber = topBarberList[index];
              return _BuildBarberCard(barber: barber);
            },
          ),
        ),
      ],
    );
  }
}
