part of '../change_password_page.dart';

class BarberaChangePasswordScreen extends StatefulWidget {
  const BarberaChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<BarberaChangePasswordScreen> createState() =>
      _BarberaChangePasswordScreenState();
}

class _BarberaChangePasswordScreenState extends State<BarberaChangePasswordScreen> {
  late TextEditingController _currentPasswordController;
  late TextEditingController _newPasswordController;
  late TextEditingController _passwordConfirmationController;
  bool _isLoading = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _currentPasswordController = TextEditingController(text: '');
    _newPasswordController = TextEditingController(text: '');
    _passwordConfirmationController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
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
            AppLocalizations.of(context)!.change_password,
            style: theme.textTheme.displayLarge,
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!
                .your_new_password_must_be_different_from_previous_used_passwords,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: Const.space25),
          _BuildCurrentPasswordTextField(
            controller: _currentPasswordController,
            obscureText: _obscureText,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ), 
          const SizedBox(height: Const.space15),
          _BuildNewPasswordTextField(
            controller: _newPasswordController,
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
                showToast(msg: AppLocalizations.of(context)!.password_changed);
                Get.back<dynamic>();
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
