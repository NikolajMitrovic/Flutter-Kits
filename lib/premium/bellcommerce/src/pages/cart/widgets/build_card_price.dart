part of '../cart_page.dart';

class _BuildCartPrice extends StatelessWidget {
  const _BuildCartPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).disabledColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${AppLocalizations.of(context)!.total_item} 3',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                NumberFormat.currency(
                  symbol: r'$',
                ).format(812),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(height: Const.space12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.shipping_cost,
                  style: Theme.of(context).textTheme.titleSmall),
              Text(NumberFormat.currency(
                  symbol: r'$',
                ).format(7), style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          const SizedBox(height: Const.space12),
          Divider(
            color: Theme.of(context).disabledColor,
            thickness: 1,
          ),
          const SizedBox(height: Const.space12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.total_price,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                NumberFormat.currency(
                  symbol: r'$',
                ).format(824),
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
