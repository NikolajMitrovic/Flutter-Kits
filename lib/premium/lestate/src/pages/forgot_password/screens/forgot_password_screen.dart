part of '../forgot_password_page.dart';

class LestateForgotPasswordScreen extends StatefulWidget {
  const LestateForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<LestateForgotPasswordScreen> createState() =>
      _LestateForgotPasswordScreenState();
}

class _LestateForgotPasswordScreenState
    extends State<LestateForgotPasswordScreen> {
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
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.forgot_password,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: Const.space25),
          SvgPicture.asset(
            Illustrations.forgotPassword,
            width: 250,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: Const.space25 * 2),
          Text(
            AppLocalizations.of(context)!
                .please_enter_your_email_address_to_receive_a_verification_code,
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.email_address,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space12),
          CustomTextFormField(
            controller: _emailController,
            hintText: AppLocalizations.of(context)!.enter_email_address,
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.toNamed<dynamic>(
                  LestateRoutes.otpEmail,
                  arguments: _emailController.text,
                );
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.send,
            labelLoading: AppLocalizations.of(context)!.sending,
          )
        ],
      ),
    );
  }
}
