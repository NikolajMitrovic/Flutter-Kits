part of '../checkout_page.dart';

class ShuppyCheckoutSuccessScreen extends StatelessWidget {
  const ShuppyCheckoutSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: ()async=> false,
          child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFadeTransition(
                duration: const  Duration(milliseconds: 300),
                axis: Axis.vertical,
                child: Image.asset(Illustrations.checkoutSuccess),
              ),
            const    SizedBox(height: Const.space25),
              CustomShakeTransition(
                duration: const  Duration(milliseconds: 1100),
                child: Text(
                  AppLocalizations.of(context)!.hooray_your_order_has_been_placed,
                  style: theme.textTheme.displaySmall,
                  textAlign: TextAlign.center,
                ),
              ),
               const SizedBox(height: Const.space15),
              CustomShakeTransition(
                duration: const  Duration(milliseconds: 1200),
                child: Text(
                  AppLocalizations.of(context)!
                      .congratuation_your_order_has_been_placed_please_make_a_payment_to_continue_the_transaction,
                  style: theme.textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
               const SizedBox(height: Const.space25),
              CustomShakeTransition(
                duration: const  Duration(milliseconds: 1300),
                axis: Axis.vertical,
                child: CustomElevatedButton(
                  label: AppLocalizations.of(context)!.pay_now,
                  onTap: () {
                    Get.toNamed<dynamic>(ShuppyRoutes.payment);
                  },
                ),
              ),
               const SizedBox(height: Const.space12),
              CustomShakeTransition(
                duration: const  Duration(milliseconds: 1400),
                axis: Axis.vertical,
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: BorderSide(
                        color: theme.primaryColor,
                      ),
                    ),
                    onPressed: () {
                      Get.offAllNamed<dynamic>(ShuppyRoutes.home);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.shop_again,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
