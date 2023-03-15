part of '../checkout_page.dart';

class FurneyCheckoutSuccessScreen extends StatelessWidget {
  const FurneyCheckoutSuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: CustomAppBar(context, enableLeading: false, actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Get.offAllNamed<dynamic>(FurneyRoutes.home),
        )
      ]),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      CustomIcon.done,
                      width: Screens.width(context) / 3,
                      height: Screens.width(context) / 3,
                      color: provider.isDarkTheme
                          ? ColorDark.fontTitle
                          : ColorLight.fontTitle,
                    ),
                    const SizedBox(height: Const.space25),
                    AutoSizeText(
                      '${AppLocalizations.of(context)!.thank_you}!',
                      style: theme.textTheme.displayLarge,
                    ),
                    const SizedBox(height: Const.space15),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            // ignore: lines_longer_than_80_chars
                            text: AppLocalizations.of(context)!
                                .your_Order_is_Completed_Please_Check_the_Delivery_Status,
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            // ignore: lines_longer_than_80_chars
                            text:
                                ' ${AppLocalizations.of(context)!.order_tracking} ',
                            style: theme.textTheme.headlineMedium,
                          ),
                          TextSpan(
                            text: AppLocalizations.of(context)!.pages,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                Const.margin,
                0,
                Const.margin,
                Const.margin,
              ),
              child: CustomElevatedButton(
                  onTap: () => Get.offAllNamed<dynamic>(FurneyRoutes.home),
                  label: AppLocalizations.of(context)!.continue_shopping),
            ),
          ],
        ),
      ),
    );
  }
}
