part of '../change_password_page.dart';

class CoffiyChangePasswordScreen extends StatefulWidget {
  const CoffiyChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CoffiyChangePasswordScreen> createState() =>
      _CoffiyChangePasswordScreenState();
}

class _CoffiyChangePasswordScreenState
    extends State<CoffiyChangePasswordScreen> {
  late TextEditingController _newPasswordController;
  late TextEditingController _confirmPasswordController;
  bool _isLoading = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _newPasswordController = TextEditingController(text: '');
    _confirmPasswordController = TextEditingController(text: '');
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
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25 * 2),
          Text(
            AppLocalizations.of(context)!.your_new_password_must_be_different_from_previous_used_passwords,
            style: theme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: Const.space25),
          Text(
            AppLocalizations.of(context)!.new_password,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space12),
          CustomTextFormField(
            controller: _newPasswordController,
            obscureText: _obscureText,
            hintText: AppLocalizations.of(context)!.enter_your_password,
            preffixIcon: IconlyLight.lock,
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
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.confirm_password,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space12),
          CustomTextFormField(
            controller: _confirmPasswordController,
            obscureText: _obscureText,
            hintText: AppLocalizations.of(context)!.enter_your_password,
            preffixIcon: IconlyLight.lock,
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
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.toNamed<dynamic>(CoffiyRoutes.home);
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.save,
            labelLoading: AppLocalizations.of(context)!.saving,
          )
        ],
      ),
    );
  }
}
