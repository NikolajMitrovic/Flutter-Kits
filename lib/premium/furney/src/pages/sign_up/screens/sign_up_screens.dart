part of '../sign_up_page.dart';

class FurneySignUpScreen extends StatefulWidget {
  const FurneySignUpScreen({Key? key}) : super(key: key);
  @override
  State<FurneySignUpScreen> createState() => _FurneySignUpScreenState();
}

class _FurneySignUpScreenState extends State<FurneySignUpScreen> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _mobileNumberController;
  TextEditingController? _addressController;
  bool _isLoading = false;
  bool _obscureText = true;
  // final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _mobileNumberController = TextEditingController();
    _addressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Form(
        // key: _formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding:const EdgeInsets.symmetric(horizontal: Const.margin),
          children: [
            _HeaderSection(),
            SizedBox(height: Screens.width(context) / 5.0),
            _BodySection(
              obscureText: _obscureText,
              emailController: _emailController,
              passwordController: _passwordController,
              mobileNumberController: _mobileNumberController,
              addressController: _addressController,
              onObscureTextTap: () {
                setState(() => _obscureText = !_obscureText);
              },
            ),
            SizedBox(height: Screens.width(context) / 50.0),
            _BuildTermsAndCondition(),
            SizedBox(height: Screens.width(context) / 14.0),
            _BuildSignUpButton(
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
            SizedBox(height: Screens.width(context) / 14.0),
            _BuildSignInButton(),
          ],
        ),
      ),
    );
  }
}
