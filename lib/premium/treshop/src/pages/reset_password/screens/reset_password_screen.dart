part of '../reset_password.dart';

class TreshopResetPasswordScreen extends StatefulWidget {
  const TreshopResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<TreshopResetPasswordScreen> createState() => _TreshopResetPasswordScreenState();
}

class _TreshopResetPasswordScreenState extends State<TreshopResetPasswordScreen> {
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
          CustomShakeTransition(
            child: SvgPicture.asset(
              Illustrations.resetPassword,
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 800),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.forgot_password,
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall,
              ),
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 850),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!
                    .enter_your_registered_email_below_to_receive_password_reset_instruction,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 900),
            child: CustomTextFormField(
              controller: _emailController,
              borderType: BorderType.outline,
              textFieldType: TextFieldType.email,
              hintText: AppLocalizations.of(context)!.email,
              prefixIcon: Icon(
                FeatherIcons.mail,
                color: theme.primaryColor,
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1000),
            child: CustomElevatedButton(
              onTap: () {
                setState(() => _isLoading = true);
                Future.delayed(const Duration(seconds: 3), () {
                  setState(() => _isLoading = false);
                  Get.toNamed<dynamic>(TreshopRoutes.resetPasswordSuccess);
                });
              },
              label: AppLocalizations.of(context)!.send,
              isLoading: _isLoading,
            ),
          ),
        ],
      ),
    );
  }
}
