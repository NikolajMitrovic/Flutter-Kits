part of '../sign_up_page.dart';

class ShuppySignUpScreen extends StatefulWidget {
  const ShuppySignUpScreen({Key? key}) : super(key: key);

  @override
  State<ShuppySignUpScreen> createState() => _ShuppySignUpScreenState();
}

class _ShuppySignUpScreenState extends State<ShuppySignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _isLoading = false;
  TextEditingController? _fullNameController;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _confirmPasswordController;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  Future<void> signUp(BuildContext context, {required String fullName}) {
    setState(() {
      _isLoading = true;
    });
    return Future.delayed(const Duration(seconds: 3), () {
      showToast(
        msg: '${AppLocalizations.of(context)!.registered_as} $fullName',
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
        appBar: CustomAppBar(context),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            children: [
              _HeaderSection(
                image: state.isDarkTheme == false
                    ? Images.logoLight
                    : Images.logoDark,
              ),
              const SizedBox(height: 50),
              _BodySection(
                fullNameController: _fullNameController,
                emailController: _emailController,
                passwordController: _passwordController,
                confirmPasswordController: _confirmPasswordController,
                obscureText: _obscureText,
                isLoading: _isLoading,
                onObscureTextTap: () {
                  setState(() => _obscureText = !_obscureText);
                },
                onSignUpTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (_formKey.currentState!.validate()) {
                    signUp(context, fullName: _fullNameController!.text);
                  }
                },
              ),
              const SizedBox(height: Const.space25),
              _FooterSection(
                onSignUpTap: () => Get.back<dynamic>(),
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
