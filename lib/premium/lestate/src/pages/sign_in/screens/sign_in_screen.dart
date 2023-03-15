part of '../sign_in_page.dart';

class LestateSignInScreen extends StatefulWidget {
  const LestateSignInScreen({Key? key}) : super(key: key);

  @override
  State<LestateSignInScreen> createState() => _LestateSignInScreenState();
}

class _LestateSignInScreenState extends State<LestateSignInScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: 75),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '${AppLocalizations.of(context)!.welcome_to} ',
                style: theme.textTheme.displayLarge,
              ),
              TextSpan(
                text: 'Lestate.',
                style: theme.textTheme.displayLarge?.copyWith(
                  color: Const.accentColor,
                ),
              ),
            ]),
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .enter_your_registered_email_address_or_phone_number_to_log_in,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space25 * 2),
          Text(
            AppLocalizations.of(context)!.email_or_phone_number,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _emailController,
            hintText:
                AppLocalizations.of(context)!.enter_your_email_or_phone_number,
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.password,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _passwordController,
            obscureText: _obscureText,
            hintText: AppLocalizations.of(context)!.enter_your_password,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              color: theme.primaryColor,
              icon: Icon((_obscureText == true)
                  ? Icons.visibility
                  : Icons.visibility_off),
            ),
          ),
          const SizedBox(height: Const.space25),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () => Get.toNamed<dynamic>(LestateRoutes.forgotPassword),
              child: Text(
                AppLocalizations.of(context)!.forgot_your_password,
                style: theme.textTheme.bodyMedium,
              ),
            ),
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
                Get.toNamed<dynamic>(LestateRoutes.home);
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.log_in,
            labelLoading: AppLocalizations.of(context)!.logging_in,
          ),
          const SizedBox(height: Const.space25),
          const _BuildDivider(),
          const SizedBox(height: Const.space25),
          const GoogleSignInButton(),
          const SizedBox(height: Const.space25),
          const _BuildRegisterButton(),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
