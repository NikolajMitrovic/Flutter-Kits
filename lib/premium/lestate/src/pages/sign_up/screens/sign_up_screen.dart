part of '../sign_up_page.dart';

class LestateSignUpScreen extends StatefulWidget {
  const LestateSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LestateSignUpScreen> createState() => _LestateSignUpScreenState();
}

class _LestateSignUpScreenState extends State<LestateSignUpScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
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
            AppLocalizations.of(context)!.create_your_account,
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .please_enter_your_data_to_create_account,
            style: theme.textTheme.titleMedium,
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
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.phone_number,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _phoneNumberController,
            hintText: AppLocalizations.of(context)!.enter_your_phone_number,
            textInputType: TextInputType.phone,
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.email,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _emailController,
            hintText: AppLocalizations.of(context)!.enter_your_email_address,
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
          CustomElevatedButton(
            onTap: () => Get.toNamed<dynamic>(LestateRoutes.otpPhone),
            label: AppLocalizations.of(context)!.continuee,
          ),
          const SizedBox(height: Const.space25),
          const _BuildDivider(),
          const SizedBox(height: Const.space25),
          const GoogleSignInButton(),
          const SizedBox(height: Const.space25),
          const _BuildLoginButton(),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
