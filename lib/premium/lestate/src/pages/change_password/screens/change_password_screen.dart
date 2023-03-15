part of '../change_password_page.dart';

class LestateChangePasswordScreen extends StatefulWidget {
  const LestateChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<LestateChangePasswordScreen> createState() => _LestateChangePasswordScreenState();
}

class _LestateChangePasswordScreenState extends State<LestateChangePasswordScreen> {
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
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.change_password,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: Const.space25),
          SvgPicture.asset(
            Illustrations.setPassword,
            width: 150,
            fit: BoxFit.fitHeight,
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
                Get.toNamed<dynamic>(LestateRoutes.home);
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
