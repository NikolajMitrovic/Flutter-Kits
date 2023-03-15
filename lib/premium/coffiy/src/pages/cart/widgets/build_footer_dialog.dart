part of '../cart_page.dart';

class _BuildFooterDialog extends StatelessWidget {
  const _BuildFooterDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.total_price,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: Const.space5),
                Text(
                  NumberFormat.currency(
                    symbol: r'$',
                  ).format(25),
                  style: theme.textTheme.displayLarge,
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              onTap: ()=> Get.toNamed<dynamic>(CoffiyRoutes.orderSuccess),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    IconlyLight.wallet,
                    color: Colors.white,
                  ),
                  const SizedBox(width: Const.space15),
                  Text(
                    AppLocalizations.of(context)!.pay_now,
                    style: theme.textTheme.button,
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
