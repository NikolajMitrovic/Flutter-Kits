part of '../forgot_password_page.dart';

class FurneyForgotPasswordScreen extends StatefulWidget { 
  const FurneyForgotPasswordScreen({Key? key}) : super(key: key);
  @override
  State<FurneyForgotPasswordScreen> createState() => _FurneyForgotPasswordScreenState();
}

class _FurneyForgotPasswordScreenState extends State<FurneyForgotPasswordScreen> {
  TextEditingController? _emailController;
  bool? _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          children: [
            _HeaderSection(),
            const SizedBox(height: Const.space25),
            _BodySection(emailController: _emailController),
            const SizedBox(height: Const.space25),
            _BuildSendButton(
              isLoading: _isLoading,
              onSendTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                if (_formKey.currentState!.validate()) {
                  setState(() => _isLoading = true);
                  Future.delayed(const Duration(seconds: 3),
                      Get.back);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
