part of '../booking_detail_page.dart';


class _BuildServiceList extends StatelessWidget {
  const _BuildServiceList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.space15),
        border: Border.all(color: theme.primaryColor),
      ),
      child: Column(
        children: [
          Container(
            width: Screens.width(context),
            height: 35,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(14),
                  topLeft: Radius.circular(14),
                )),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.service,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: Const.space15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.service_location,
                  style: theme.textTheme.headlineMedium,
                ),
                Text(
                  AppLocalizations.of(context)!.barbershop,
                  style: theme.textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Divider(color: theme.disabledColor),
          _BuildListTile(
            title: 'Hair style',
            subtitle: '30 ${AppLocalizations.of(context)!.min}',
            price: 50,
          ),
          _BuildListTile(
            title: 'Saving',
            subtitle: '5 ${AppLocalizations.of(context)!.min}',
            price: 20,
          ),
          _BuildListTile(
            title: 'Spa',
            subtitle: '15 ${AppLocalizations.of(context)!.min}',
            price: 10,
          ),
          _BuildListTile(
            title: 'Facial',
            subtitle: '30 ${AppLocalizations.of(context)!.min}',
            price: 60,
          ),
          const SizedBox(height: Const.space15),
          Container(
            width: Screens.width(context),
            padding: const EdgeInsets.symmetric(
              horizontal: Const.margin,
              vertical: 5,
            ),
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(14),
                  bottomLeft: Radius.circular(14),
                )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.total,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                        symbol: r'$',
                        decimalDigits: 0,
                      ).format(310),
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.total_time,
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '2 ${AppLocalizations.of(context)!.hours}',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
