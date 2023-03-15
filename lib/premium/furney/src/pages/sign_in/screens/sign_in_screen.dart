part of '../sign_in_page.dart';

class FurneySignInScreen extends StatefulWidget {
  const FurneySignInScreen({Key? key}) : super(key: key);
  @override
  State<FurneySignInScreen> createState() => _FurneySignInScreenState();
}

class _FurneySignInScreenState extends State<FurneySignInScreen> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  bool _isLoading = false;
  bool _obscureText = true;
  // final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key: _formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          children: [
            SizedBox(height: Screens.width(context) / 5.0),
            _HeaderSection(),
            SizedBox(height: Screens.width(context) / 5.0),
            _BodySection(
              emailController: _emailController,
              passwordController: _passwordController,
              obscureText: _obscureText,
              onObscureTextTap: () {
                setState(() => _obscureText = !_obscureText);
              },
            ),
            const SizedBox(height: Const.space25),
            _BuildSignInButton(
              isLoading: _isLoading,
              onSignInTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                // if (_formKey.currentState!.validate()) {
                  setState(() => _isLoading = true);
                  Future.delayed(
                    const Duration(seconds: 3),
                    () => Get.toNamed<dynamic>(FurneyRoutes.home),
                  );
                // }
              },
            ),
            const SizedBox(height: Const.space8),
            const _BuildForgotPasswordButton(),
            _BuildSignUpButton()
          ],
        ),
      ),
    );
  }
}
