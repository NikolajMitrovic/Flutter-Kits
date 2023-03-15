part of '../checkout_page.dart';

class _FooterSection extends StatelessWidget {
  final int? couponId;
  final CheckoutModel? checkout;
  final double? discount;
  final int? priceTotal;
  final int? total;
  final bool isLoading;

  const _FooterSection({
    Key? key,
    this.couponId,
    this.checkout,
    this.discount,
    this.priceTotal,
    required this.isLoading,
    this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: 218,
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space12,
      ),
      decoration: BoxDecoration(
        color: theme.cardColor,
      ),
      child: Column(
        children: [
          _BuildPriceDetail(
            title: AppLocalizations.of(context)!.shipping_fee,
            value: ShippingList.shippingList[1].price,
          ),
          const SizedBox(height: Const.space8),
          if (couponId == null)
            const SizedBox()
          else
            _BuildPriceDetail(
              isDiscount: true,
              title:
                  // ignore: lines_longer_than_80_chars
                  '${AppLocalizations.of(context)!.discount} ${CouponList.couponList[checkout!.couponId!].discount}%',
              value: discount?.toInt(),
            ),
          const SizedBox(height: Const.space8),
          _BuildPriceDetail(
            title: AppLocalizations.of(context)!.price_total,
            value: priceTotal,
          ),
          const SizedBox(height: Const.space8),
          Divider(color: theme.hintColor),
          const SizedBox(height: Const.space8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                AppLocalizations.of(context)!.total,
                style: theme.textTheme.headlineMedium,
              ),
              AutoSizeText(
                NumberFormat.currency(
                  symbol: r'$',
                  decimalDigits: 0,
                ).format(total ?? 0),
                style: theme.textTheme.displaySmall,
              ),
            ],
          ),
          const SizedBox(height: Const.space8),
          if (isLoading == true)
            const CustomLoadingIndicator()
          else
            CustomElevatedButton(
              onTap: () {
                Future.delayed(const Duration(seconds: 2), () {
                  Get.toNamed<dynamic>(TreshopRoutes.checkoutSuccess);
                });
              },
              label: AppLocalizations.of(context)!.buy_now,
            ),
        ],
      ),
    );
  }
}
