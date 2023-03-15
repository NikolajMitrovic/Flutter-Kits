part of '../barbershop_page.dart';

class _BuildServiceCard extends StatelessWidget {
  final CategoryModel category;

  const _BuildServiceCard({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeMode = Provider.of<ThemeProvider>(context);

    return ExpansionTile(
      title: Text(category.name ?? '', style: theme.textTheme.bodyMedium),
      trailing: Text(
        AppLocalizations.of(context)!.view,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.primaryColor,
        ),
      ),
      leading: CircleAvatar(
        radius: Const.radius,
        backgroundColor : theme.backgroundColor ,
        child: SvgPicture.asset(
          category.icon ?? '',
          width: 25,
          color: (themeMode.isDarkTheme == true)
              ? ColorDark.fontTitle
              : ColorLight.fontTitle,
        ),
      ),
      children: category.services!
          .map(
            (e) => _ServicesCard(service: e),
          )
          .toList(),
    );
  }
}

class _ServicesCard extends StatelessWidget {
  final ServicesModel service;

  const _ServicesCard({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(service.name ?? '', style: theme.textTheme.headlineMedium),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Const.space12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: theme.primaryColor),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  NumberFormat.currency(
                    symbol: r'$',
                    decimalDigits: 0,
                  ).format(service.price),
                  style: theme.textTheme.headlineMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space5),
          Row(
            children: [
              Icon(
                FeatherIcons.clock,
                size: 14,
                color: theme.disabledColor,
              ),
              const SizedBox(width: Const.space5),
              Text(
                '10 Min',
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          const SizedBox(height: Const.space5),
          Text(
            'Lorem ipsum dolor sit amet',
            style: theme.textTheme.titleSmall,
          ),
          const SizedBox(height: Const.space5),
        ],
      ),
    );
  }
}
