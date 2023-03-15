part of '../profile_page.dart';

class _BuildOrderStatus extends StatelessWidget {
  final int? totalNotPay;
  final int? totalPacked;
  final int? totalOnDelivery;

  const _BuildOrderStatus(
      {Key? key, this.totalNotPay, this.totalPacked, this.totalOnDelivery})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ProductStatus(
              totalItem: totalNotPay,
              icon: FeatherIcons.creditCard,
              title: AppLocalizations.of(context)!.not_yet_paid,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.notPay),
            ),
            const _BuildCustomDivider(),
            _ProductStatus(
              totalItem: totalPacked,
              icon: FeatherIcons.archive,
              title: AppLocalizations.of(context)!.packed,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.packaging),
            ),
            const _BuildCustomDivider(),
            _ProductStatus(
              totalItem: totalOnDelivery,
              icon: FeatherIcons.truck,
              title: AppLocalizations.of(context)!.sent,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.onDelivery),
            ),
            const _BuildCustomDivider(),
            _ProductStatus(
              totalItem: 0,
              icon: FeatherIcons.star,
              title: AppLocalizations.of(context)!.done,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.done),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildCustomDivider extends StatelessWidget {
  const _BuildCustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.margin),
        color: Theme.of(context).disabledColor,
      ),
    );
  }
}

class _ProductStatus extends StatelessWidget {
  const _ProductStatus({
    Key? key,
    this.totalItem,
    this.title,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final int? totalItem;
  final String? title;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 20),
              const SizedBox(height: 8),
              Text(title!, style: theme.textTheme.titleSmall),
            ],
          ),
          if (totalItem == 0)
            const SizedBox()
          else
            (totalItem == null)
                ? const SizedBox()
                : Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor : theme.primaryColor,
                      child: Text(
                        totalItem!.toString(),
                        style: theme.textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
        ],
      ),
    );
  }
}
