part of '../sign_in_page.dart';

class CoffiySignInScreen extends StatefulWidget {
  const CoffiySignInScreen({Key? key}) : super(key: key);

  @override
  State<CoffiySignInScreen> createState() => _CoffiySignInScreenState();
}

class _CoffiySignInScreenState extends State<CoffiySignInScreen> {
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
          Text(
            AppLocalizations.of(context)!.welcome_back,
            style: theme.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25 * 2),
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
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.password,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _passwordController,
            obscureText: _obscureText,
            preffixIcon: IconlyLight.lock,
            hintText: AppLocalizations.of(context)!.enter_your_password,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              color: theme.primaryColor,
              icon: Icon(
                (_obscureText == true) ? IconlyLight.show : IconlyBold.show,
              ),
            ),
          ),
          const SizedBox(height: Const.space15*2),
          Align(
            child: InkWell(
              onTap: () => Get.toNamed<dynamic>(CoffiyRoutes.forgotPassword),
              child: Text(
                AppLocalizations.of(context)!.forgot_your_password,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: Const.space15*2),
          CustomElevatedButton(
            onTap: () {
              setState(() {
                _isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  _isLoading = false;
                });
                Get.toNamed<dynamic>(CoffiyRoutes.home);
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.log_in,
            labelLoading: AppLocalizations.of(context)!.logging_in,
          ),
          const SizedBox(height: Const.space25 * 2),
          const _BuildRegisterButton(),
          const SizedBox(height: Const.space25),
          const _BuildSocialNetwork(),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
