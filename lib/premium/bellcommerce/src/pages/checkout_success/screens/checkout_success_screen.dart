part of '../checkout_success_page.dart';

class BellcommerceCheckoutSuccessScreen extends StatelessWidget {
  const BellcommerceCheckoutSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Const.space12,
          horizontal: Const.margin,
        ),
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor : Theme.of(context).primaryColor,
                      child: const Icon(
                        Icons.done,
                        size: 60,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: Const.space25*2),
                    Text(
                      AppLocalizations.of(context)!.your_order_is_complete,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: Const.space12),
                    Text(
                      AppLocalizations.of(context)!
                          .thank_you_for_shopping_we_will_confirm_your_payment_and_process_your_order_as_quickly_as_possible,
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: Const.space25*2),
                    CustomElevatedButton(
                      onTap: () => Get.offAllNamed<dynamic>(BellcommerceRoutes.home),
                      label: AppLocalizations.of(context)!.back_to_dashboard,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
