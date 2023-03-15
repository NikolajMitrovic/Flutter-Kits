part of '../checkout_page.dart';

class _FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: Screens.width(context) / 1.45,
      padding: const EdgeInsets.all(Const.margin),
      decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Const.radius),
            topRight: Radius.circular(Const.radius),
          )),
      child: Column(
        children: [
          _BuildCheckoutListTile(
            title: AppLocalizations.of(context)!.sub_total,
            value: 10,
          ),
          const SizedBox(height: Const.space8),
          _BuildCheckoutListTile(
            title: AppLocalizations.of(context)!.shipping_fee,
            value: 5,
          ),
          const SizedBox(height: Const.space8),
          _BuildCheckoutListTile(
            title: AppLocalizations.of(context)!.estimating_tax,
            value: 3,
          ),
          const SizedBox(height: Const.space12),
          Divider(color: theme.hintColor),
          const SizedBox(height: Const.space8),
          _BuildCheckoutListTile(
            title: AppLocalizations.of(context)!.total,
            value: 100,
          ),
          const Spacer(),
          CustomElevatedButton(
            onTap: () => Get.toNamed<dynamic>(FurneyRoutes.checkoutSucceess),
            label: AppLocalizations.of(context)!.checkout,
          ),
        ],
      ),
    );
  }
}
