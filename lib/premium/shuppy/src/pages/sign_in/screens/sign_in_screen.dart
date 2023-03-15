part of '../sign_in_page.dart';

class ShuppySignInScreen extends StatefulWidget {
  const ShuppySignInScreen({Key? key}) : super(key: key);

  @override
  State<ShuppySignInScreen> createState() => _ShuppySignInScreenState();
}

class _ShuppySignInScreenState extends State<ShuppySignInScreen> {
  bool _obscureText = true;
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  Future<void> signIn(BuildContext context, {required String email}) {
    setState(() {
      _isLoading = true;
    });
    return Future.delayed(const Duration(seconds: 3), () {
      showToast(
        msg: '${AppLocalizations.of(context)!.authenticated_as} $email',
      );
      Get.offAllNamed<dynamic>(ShuppyRoutes.home);
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, state, snapshot) {
      return Scaffold(
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            children: [
              const SizedBox(height: 50),
              _HeaderSection(
                image: state.isDarkTheme == false
                    ? Images.logoLight
                    : Images.logoDark,
              ),
              const SizedBox(height: 50),
              _BodySection(
                emailController: _emailController,
                passwordController: _passwordController,
                isLoading: _isLoading,
                onForgotPasswordTap: () =>
                    Get.toNamed<dynamic>(ShuppyRoutes.forgotPassword),
                obscureText: _obscureText,
                onObscureTextTap: () {
                  setState(() => _obscureText = !_obscureText);
                },
                onSignInTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (_formKey.currentState!.validate()) {
                    signIn(context, email: _emailController!.text);
                  }
                },
              ),
              const SizedBox(height: Const.space25),
              _FooterSection(
                onSignUpTap: () => Get.toNamed<dynamic>(ShuppyRoutes.signUp),
                onFacebookTap: () =>
                    showToast(msg: AppLocalizations.of(context)!.facebook),
                onGoogleTap: () =>
                    showToast(msg: AppLocalizations.of(context)!.google),
              ),
            ],
          ),
        ),
      );
    });
  }
}
