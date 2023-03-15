part of '../forgot_password_page.dart';

class BellcommerceForgotPasswordScreen extends StatefulWidget {
  const BellcommerceForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceForgotPasswordScreen> createState() =>
      _BellcommerceForgotPasswordScreenState();
}

class _BellcommerceForgotPasswordScreenState
    extends State<BellcommerceForgotPasswordScreen> {
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
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: <Widget>[
          SvgPicture.asset(
            Illustrations.forgotPassword,
            width: 200,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.forgot_password,
            style: theme.textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .we_have_sent_a_password_recovery_instruction_to_your_email,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25),
          CustomTextFormField(
            controller: _emailController,
            hintText: AppLocalizations.of(context)!.email_address,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: const Icon(FeatherIcons.mail),
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () {
              setState(() {
                _isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  _isLoading = false;
                });
                Get.toNamed<dynamic>(BellcommerceRoutes.forgotPasswordSuccess);
              });
            },
            label: AppLocalizations.of(context)!.send,
            isLoading: _isLoading,
            labelLoading: AppLocalizations.of(context)!.sending,
          )
        ],
      ),
    );
  }
}
