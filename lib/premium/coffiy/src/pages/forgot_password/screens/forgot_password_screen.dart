part of '../forgot_password_page.dart';

class CoffiyForgotPasswordScreen extends StatefulWidget {
  const CoffiyForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CoffiyForgotPasswordScreen> createState() =>
      _CoffiyForgotPasswordScreenState();
}

class _CoffiyForgotPasswordScreenState
    extends State<CoffiyForgotPasswordScreen> {
  late TextEditingController _emailController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: 75),
          Text(
            AppLocalizations.of(context)!.reset_password,
            style: theme.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25 * 2),
          Text(
            AppLocalizations.of(context)!.confirm_your_email_and_we_will_send_the_instructions,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.email_address,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _emailController,
            hintText: AppLocalizations.of(context)!.enter_your_email_address,
            textInputType: TextInputType.emailAddress,
            preffixIcon: IconlyLight.message,
          ),
          const SizedBox(height: Const.space25 * 2),
          CustomElevatedButton(
            onTap: () {
              setState(() {
                _isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  _isLoading = false;
                });
                Get.toNamed<dynamic>(CoffiyRoutes.otpEmail);
                showToast(msg: AppLocalizations.of(context)!.instructions_sent_successfully);
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.send_instructions,
            labelLoading: AppLocalizations.of(context)!.sending,
          ),
        ],
      ),
    );
  }
}
