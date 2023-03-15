part of '../payment_method_page.dart';

Future<dynamic> _addPaymentMethodBottomSheet(BuildContext context) {
  final theme = Theme.of(context);
  return showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor : theme.cardColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Const.radius),
          topRight: Radius.circular(Const.radius),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
          ),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Const.radius),
              topRight: Radius.circular(Const.radius),
            ),
          ),
          width: Screens.width(context),
          height: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Const.space8),
              Center(
                child: Container(
                  width: 50,
                  height: 3,
                  decoration: BoxDecoration(
                    color: theme.hintColor,
                    borderRadius: BorderRadius.circular(
                      Const.radius,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  _BuildButtonIcon(
                    icon: Assets.debit,
                    label: AppLocalizations.of(context)!.debit_or_credit_card,
                    onTap: () {
                      Get.back<dynamic>();
                      // ignore: cascade_invocations
                      Get.toNamed<dynamic>(BarberaRoutes.addCreditCard);
                    },
                  ),
                  const SizedBox(width: Const.space25),
                  _BuildButtonIcon(
                    icon: Assets.paypal,
                    label: AppLocalizations.of(context)!.paypal,
                    onTap: () {
                      Get.back<dynamic>();
                      // ignore: cascade_invocations
                      Get.toNamed<dynamic>(BarberaRoutes.paypal);
                    },
                  ),
                ],
              )
            ],
          ),
        );
      });
}

class _BuildButtonIcon extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String label;

  const _BuildButtonIcon({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(height: Const.space8),
          Text(
            label,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
