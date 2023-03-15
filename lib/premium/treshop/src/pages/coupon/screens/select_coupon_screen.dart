part of '../coupon_page.dart';

class TreshopSelectCouponScreen extends StatelessWidget {
  const TreshopSelectCouponScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.available_coupon,
        ),
        body: ListView.builder(
          itemCount: CouponList.couponList.length,
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          itemBuilder: (context, index) {
            final coupon = CouponList.couponList[index];

            return CouponCard(
              coupon: coupon,
              buttonLabel: (1 == index)
                  ? AppLocalizations.of(context)!.active
                  : AppLocalizations.of(context)!.use,
              buttonColor: (1 == index)
                  ? Theme.of(context).hintColor
                  : Theme.of(context).primaryColor,
              onUseTap: () {
                // cart.selectedCoupon = index;
              },
            );
          },
        ),
      );
  }
}
