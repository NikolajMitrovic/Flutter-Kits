part of '../forgot_password_page.dart';

class ShuppyForgotPasswordScreen extends StatefulWidget {
  const ShuppyForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyForgotPasswordScreen> createState() =>
      _ShuppyForgotPasswordScreenState();
}

class _ShuppyForgotPasswordScreenState
    extends State<ShuppyForgotPasswordScreen> {
  bool _isLoading = false;
  TextEditingController? _emailController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  Future<void> resetPassword(BuildContext context) {
    setState(() {
      _isLoading = true;
    });
    return Future.delayed(const Duration(seconds: 3), () {
      Dialogs.alertSuccess(context,
          title: AppLocalizations.of(context)!.successfully,
          subtitle: AppLocalizations.of(context)!
              .your_password_has_been_changed_please_check_your_email_inbox,
          buttonLabel: AppLocalizations.of(context)!.confirm, onTap: () {
        Get.back<dynamic>();
        // ignore: cascade_invocations
        Get.back<dynamic>();
      });
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.forgot_password,
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          children: [
            const _HeaderSection(
              image: Illustrations.forgotPassword,
            ),
            const SizedBox(height: Const.space25),
            _BodySection(
              emailController: _emailController,
              isLoading: _isLoading,
              onResetTap: () {
                if (_formKey.currentState!.validate()) {
                  resetPassword(context);
                } else {}
              },
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}
