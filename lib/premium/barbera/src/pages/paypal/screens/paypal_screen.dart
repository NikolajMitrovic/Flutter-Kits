part of '../paypal_page.dart';

class BarberaPaypalScreen extends StatefulWidget {
  const BarberaPaypalScreen({Key? key}) : super(key: key);

  @override
  State<BarberaPaypalScreen> createState() => _BarberaPaypalScreenState();
}

class _BarberaPaypalScreenState extends State<BarberaPaypalScreen> {
  late TextEditingController _controller;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: [
            SvgPicture.asset(
              Assets.paypal,
              width: Screens.width(context) / 3.5,
            ),
            const SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.paypal_account,
              style: theme.textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space8),
            Text(
              AppLocalizations.of(context)!
                  .please_enter_your_email_address_to_add_a_PayPal_account_as_a_payment_method,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space25),
            CustomTextFormField(
              controller: _controller,
              hintText: AppLocalizations.of(context)!.email_address,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              onTap: () {
                setState(() => _isLoading = true);
                Future.delayed(const Duration(seconds: 2), () {
                  setState(() => _isLoading = false);
                  Get.back<dynamic>();
                });
              },
              isLoading: _isLoading,
              label: AppLocalizations.of(context)!.save,
              labelLoading: AppLocalizations.of(context)!.saving,
            )
          ],
        ),
      ),
    );
  }
}
