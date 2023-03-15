part of '../forgot_password_page.dart';

class BarberaForgotPasswordScreen extends StatefulWidget {
  const BarberaForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<BarberaForgotPasswordScreen> createState() => _BarberaForgotPasswordScreenState();
}

class _BarberaForgotPasswordScreenState extends State<BarberaForgotPasswordScreen> {
  late TextEditingController _emailController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.reset_password,
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .enter_the_email_associated_with_your_account_and_we_will_send_an_email_with_instructions_to_reset_your_password,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space25),
          _BuildEmailTextField(emailController: _emailController),
          const SizedBox(height: Const.space15),
          CustomElevatedButton(
            isLoading: _isLoading,
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.toNamed<dynamic>(BarberaRoutes.forgotPasswordSuccess);
              });
            },
            label: AppLocalizations.of(context)!.send,
            labelLoading: AppLocalizations.of(context)!.sending ,
          )
        ],
      ),
    );
  }
}
