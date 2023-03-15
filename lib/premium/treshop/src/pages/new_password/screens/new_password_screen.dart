part of '../new_password_page.dart';

class TreshopNewPasswordScreen extends StatefulWidget {
  const TreshopNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<TreshopNewPasswordScreen> createState() => _TreshopNewPasswordScreenState();
}

class _TreshopNewPasswordScreenState extends State<TreshopNewPasswordScreen> {
  late TextEditingController _passwordController;
  late TextEditingController _passwordConfirmationController;
  bool _isLoading = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController(text: '');
    _passwordConfirmationController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          CustomShakeTransition(
            child: SvgPicture.asset(
              Illustrations.resetPasswordOTP,
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 800),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.create_new_password,
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
                    .your_new_password_must_be_different_from_previously_used_passwords,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: Const.space15),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 900),
            child: CustomTextFormField(
              obscureText: _obscureText,
              controller: _passwordController,
              borderType: BorderType.outline,
              textFieldType: TextFieldType.password,
              hintText: AppLocalizations.of(context)!.password,
              prefixIcon: Icon(
                FeatherIcons.lock,
                color: theme.primaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon((_obscureText == true)
                    ? FeatherIcons.eye
                    : FeatherIcons.eyeOff),
                color: theme.primaryColor,
                onPressed: () {
                  setState(() => _obscureText = !_obscureText);
                },
              ),
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 900),
            child: CustomTextFormField(
              obscureText: _obscureText,
              controller: _passwordConfirmationController,
              borderType: BorderType.outline,
              textFieldType: TextFieldType.password,
              hintText: AppLocalizations.of(context)!.confirm_password,
              prefixIcon: Icon(
                FeatherIcons.lock,
                color: theme.primaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon((_obscureText == true)
                    ? FeatherIcons.eye
                    : FeatherIcons.eyeOff),
                color: theme.primaryColor,
                onPressed: () {
                  setState(() => _obscureText = !_obscureText);
                },
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
                  Get.offAllNamed<dynamic>(TreshopRoutes.signIn);
                });
              },
              label: AppLocalizations.of(context)!.done,
              isLoading: _isLoading,
            ),
          ),
        ],
      ),
    );
  }
}
