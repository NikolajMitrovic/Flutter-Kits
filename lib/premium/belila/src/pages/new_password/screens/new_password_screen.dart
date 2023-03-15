part of '../new_password_page.dart';

class BelilaNewPasswordScreen extends StatefulWidget {
  const BelilaNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<BelilaNewPasswordScreen> createState() => _BelilaNewPasswordScreenState();
}

class _BelilaNewPasswordScreenState extends State<BelilaNewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController(text: '');
    _confirmPasswordController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(Const.margin),
          children: [
            Text(
              AppLocalizations.of(context)!.create_new_password,
              style: theme.textTheme.displaySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space12),
            Text(
              // ignore: lines_longer_than_80_chars
              AppLocalizations.of(context)!.your_new_password_must_be_different_from_previous_used_passwords,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: Const.space25),
            CustomTextFormField(
              obscureText: _obscureText,
              controller: _passwordController,
              labelText: AppLocalizations.of(context)!.password,
              hintText: AppLocalizations.of(context)!.password,
              textFieldType: TextFieldType.password,
              suffixIcon: IconButton(
                color: theme.primaryColor,
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon((_obscureText == true)
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
            ),
            const SizedBox(height: Const.space12),
            CustomTextFormField(
              obscureText: _obscureText,
              controller: _confirmPasswordController,
              hintText: AppLocalizations.of(context)!.confirm_password,
              labelText: AppLocalizations.of(context)!.confirm_password,
              textFieldType: TextFieldType.password,
              suffixIcon: IconButton(
                color: theme.primaryColor,
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon((_obscureText == true)
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
            ),
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              isLoading: _isLoading,
              onTap: () async {
                if (_passwordController.text !=
                    _confirmPasswordController.text) {
                  await showToast(
                      msg: AppLocalizations.of(context)!
                          .confirm_password_does_not_match);
                } else if (_formKey.currentState!.validate()) {
                  setState(() {
                    _isLoading=true;
                  });
                  Future.delayed(const Duration(seconds: 2),(){
                    setState(() {
                      _isLoading = false;
                    });
                    Get.toNamed<dynamic>(BelilaRoutes.signIn);
                  });
                }
              },
              label: AppLocalizations.of(context)!.done,
            ),
          ],
        ),
      ),
    );
  }
}
