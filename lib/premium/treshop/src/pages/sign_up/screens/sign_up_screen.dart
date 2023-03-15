part of '../sign_up_page.dart';

class TreshopSignUpScreen extends StatefulWidget {
  const TreshopSignUpScreen({Key? key}) : super(key: key);
  @override
  State<TreshopSignUpScreen> createState() => _TreshopSignUpScreenState();
}

class _TreshopSignUpScreenState extends State<TreshopSignUpScreen> {
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _isLoading = false;
  bool _obscureText = true;
  final List<String> _genderList = ['Male', 'Female'];
  String _gender = '';

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  Future signUp(
    BuildContext context, {
    String? username,
    String? email,
    String? password,
  }) async {
    FocusScope.of(context).requestFocus(FocusNode());
    setState(() {
      _isLoading = true;
    });
    return Future<dynamic>.delayed(
      const Duration(seconds: 2),
      () async {
        setState(() {
          _isLoading = false;
        });
        await Get.offAllNamed<dynamic>(TreshopRoutes.home);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const _BuildLogo(),
          const SizedBox(height: Const.space25),
          const _BuildSocialButton(),
          const SizedBox(height: Const.space25),
          const _BuildDivider(),
          const SizedBox(height: Const.space25),
          _BuildUsernameTextField(usernameController: _usernameController),
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
          const SizedBox(height: Const.space25),
          _BuildGenderRadioButton(
            gender: _gender,
            genderList: _genderList,
            onGenderChanged: (String? v) {
              _gender = v!;
            },
          ),
          const SizedBox(height: Const.space12),
          if (_isLoading)
            const CustomLoadingIndicator()
          else
            _BuildRegisterButton(
              usernameController: _usernameController,
              emailController: _emailController,
              passwordController: _passwordController,
              onSignUpTap: () {
                signUp(
                  context,
                  username: _usernameController.text,
                  email: _emailController.text,
                  password: _passwordController.text,
                );
              },
            ),
          const SizedBox(height: Const.space12),
          const _BuildLoginButton()
        ],
      ),
    );
  }
}
