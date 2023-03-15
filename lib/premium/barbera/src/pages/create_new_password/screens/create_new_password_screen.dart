part of '../create_new_password_page.dart';

class BarberaCreateNewPasswordScreen extends StatefulWidget {
  const BarberaCreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<BarberaCreateNewPasswordScreen> createState() =>
      _BarberaCreateNewPasswordScreenState();
}

class _BarberaCreateNewPasswordScreenState extends State<BarberaCreateNewPasswordScreen> {
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
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.create_new_password,
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .your_new_password_must_be_different_from_previous_used_passwords,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space25),
          _BuildPasswordTextField(
            passwordController: _passwordController,
            obscureText: _obscureText,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ), 
          const SizedBox(height: Const.space15),
          _BuildPasswordConfirmationTextField(
            controller: _passwordConfirmationController,
            obscureText: _obscureText,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
          const SizedBox(height: Const.space15),
          CustomElevatedButton(
            isLoading: _isLoading,
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.offAllNamed<dynamic>(BarberaRoutes.signIn);
              });
            },
            label: AppLocalizations.of(context)!.done,
            labelLoading: AppLocalizations.of(context)!.changing,
          )
        ],
      ),
    );
  }
}
