part of '../sign_in_page.dart';

class TreshopSignInScreen extends StatefulWidget {
  const TreshopSignInScreen({Key? key}) : super(key: key);
  @override
  State<TreshopSignInScreen> createState() => _TreshopSignInScreenState();
}

class _TreshopSignInScreenState extends State<TreshopSignInScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _isLoading = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  Future signIn(BuildContext context, {String? email, String? password}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      _isLoading = true;
    });
    return Future<dynamic>.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
      Get.offAllNamed<dynamic>(TreshopRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: 50),
          const _BuildLogo(),
          const SizedBox(height: Const.space25),
          const _BuildSocialButton(),
          const SizedBox(height: Const.space25),
          const _BuildDivider(),
          const SizedBox(height: Const.space25),
          _BuildEmailTextField(emailController: _emailController),
          const SizedBox(height: Const.space25),
          _BuildPasswordTextField(
            passwordController: _passwordController,
            obscureText: _obscureText,
            onObscureTextTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          const SizedBox(height: Const.space12),
          const _BuildForgotPasswordButton(),
          const SizedBox(height: Const.space12),
          if (_isLoading)
            const CustomLoadingIndicator()
          else
            _BuildSignInButton(
              emailController: _emailController,
              passwordController: _passwordController,
              onSignInTap: () {
                signIn(
                  context,
                  email: _emailController.text,
                  password: _passwordController.text,
                );
              },
            ),
          const SizedBox(height: Const.space12),
          const _BuildRegisterButton()
        ],
      ),
    );
  }
}
