part of '../checkout_page.dart';

class TreshopCheckoutSuccessScreen extends StatelessWidget {
  const TreshopCheckoutSuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IllustrationWidget(
                icon: CustomIcon.shoppingBag,
                title: AppLocalizations.of(context)!.success,
                subtitle: AppLocalizations.of(context)!
                    .your_order_will_be_delivered_soon_thank_you_for_shopping,
              ),
              const SizedBox(height: Const.space25),
              CustomElevatedButton(
                onTap: () {
                  Get.offAllNamed<dynamic>(TreshopRoutes.home);
                },
                label: AppLocalizations.of(context)!.shopping_again,
              ),
              const SizedBox(height: Const.space15),
              CustomTextButton(
                label: AppLocalizations.of(context)!.see_my_orders,
                onTap: () {
                  Get.offAllNamed<dynamic>(TreshopRoutes.order);
                },
                textColor: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
