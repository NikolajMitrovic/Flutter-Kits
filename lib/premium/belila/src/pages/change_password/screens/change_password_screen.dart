part of '../change_password_page.dart';

class BelilaChangePasswordScreen extends StatefulWidget {
  const BelilaChangePasswordScreen({Key? key}) : super(key: key);
  @override
  State<BelilaChangePasswordScreen> createState() => _BelilaChangePasswordScreenState();
}

class _BelilaChangePasswordScreenState extends State<BelilaChangePasswordScreen> {
  TextEditingController? _currentPasswordController;
  TextEditingController? _newPasswordController;
  TextEditingController? _confirmPasswordController;

  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _currentPasswordController = TextEditingController();
    _newPasswordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _currentPasswordController!.dispose();
    _newPasswordController!.dispose();
    _confirmPasswordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.change_password,
      ),
      body: _BodySection(
        isLoading: _isLoading,
        formKey: _formKey,
        obscureText: _obscureText,
        currentPasswordController: _currentPasswordController,
        newPasswordController: _newPasswordController,
        confirmPasswordController: _confirmPasswordController,
        onSavedTap: onSavedTap,
        onHideTextTap: () => setState(() => _obscureText = !_obscureText),
      ),
    );
  }

  Future onSavedTap() async {
    if (_currentPasswordController!.text == '') {
      await showToast(
          msg: AppLocalizations.of(context)!
              .please_fill_in_the_current_password);
    } else if (_newPasswordController!.text == '') {
      await showToast(
          msg: AppLocalizations.of(context)!.please_fill_in_the_new_password);
    } else if (_confirmPasswordController!.text == '') {
      await showToast(
          msg: AppLocalizations.of(context)!
              .please_fill_in_the_confirm_password);
    } else if (_newPasswordController!.text !=
        _confirmPasswordController!.text) {
      await showToast(
          msg: AppLocalizations.of(context)!.confirm_password_does_not_match);
    } else if (_formKey.currentState!.validate()) {
      FocusScope.of(context).requestFocus(FocusNode());
      setState(() {
        _isLoading = true;
      });
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _isLoading = false;
        });
        Get.back<dynamic>();
      });
    } else {}
  }
}
