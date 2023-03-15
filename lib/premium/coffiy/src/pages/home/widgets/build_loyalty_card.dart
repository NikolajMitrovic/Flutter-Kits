part of '../home_page.dart';

class _BuildLoyaltyCard extends StatelessWidget {
  const _BuildLoyaltyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      padding: const EdgeInsets.all(Const.space15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        color: theme.primaryColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.loyalty_card,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                '4/8',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space15),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Const.space12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.radius),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [1, 2, 3, 4, 5, 6, 7, 8]
                    .asMap()
                    .entries
                    .map((e) => SvgPicture.asset(
                          (e.key == 0 || e.key == 1 || e.key == 2 || e.key == 3)
                              ? CustomIcons.coffeeCupColor
                              : CustomIcons.coffeeCupHint,
                        ))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
