part of '../sign_up_page.dart';

class CoffiySignUpScreen extends StatefulWidget {
  const CoffiySignUpScreen({Key? key}) : super(key: key);

  @override
  State<CoffiySignUpScreen> createState() => _CoffiySignUpScreenState();
}

class _CoffiySignUpScreenState extends State<CoffiySignUpScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
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
            AppLocalizations.of(context)!.create_account,
            style: theme.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25 * 2),
          Text(
            AppLocalizations.of(context)!.full_name,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _fullNameController,
            hintText: AppLocalizations.of(context)!.enter_your_full_name,
            preffixIcon: IconlyLight.profile,
          ),
          const SizedBox(height: Const.space15),
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
        
          const SizedBox(height: Const.space15 * 2),
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
            label: AppLocalizations.of(context)!.sign_up,
            labelLoading: AppLocalizations.of(context)!.please_wait,
          ),
          const SizedBox(height: Const.space25 * 2),
          const _BuildSignInButton(),
          const SizedBox(height: Const.space25),
          const _BuildSocialNetwork(),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
