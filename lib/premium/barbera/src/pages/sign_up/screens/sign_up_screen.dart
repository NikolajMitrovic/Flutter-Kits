part of '../sign_up_page.dart';

class BarberaSignUpScreen extends StatefulWidget {
  const BarberaSignUpScreen({Key? key}) : super(key: key);

  @override
  State<BarberaSignUpScreen> createState() => _BarberaSignUpScreenState();
}

class _BarberaSignUpScreenState extends State<BarberaSignUpScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _passwordConfirmationController;

  late String _dateOfBirth = '';
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    _passwordConfirmationController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
  }

  Future<void> selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dateOfBirth = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const _BuildHeader(),
          const SizedBox(height: Const.space25),
          _BuildFullNameTextField(fullNameController: _fullNameController),
          const SizedBox(height: Const.space12),
          _BuildEmailTextField(emailController: _emailController),
          const SizedBox(height: Const.space12),
          _BuildBirthdayTextField(
            onTap: () => selectDate(context),
            selectedDate: _dateOfBirth,
          ),
          const SizedBox(height: Const.space12),
          _BuildPasswordTextField(
            obscureText: _obscureText,
            passwordController: _passwordController,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
          const SizedBox(height: Const.space12),
          _BuildPasswordConfirmationTextField(
            obscureText: _obscureText,
            passwordConfirmationController: _passwordConfirmationController,
            onObscureTextTap: () {
              setState(() => _obscureText = !_obscureText);
            },
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            isLoading: _isLoading,
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.toNamed<dynamic>(BarberaRoutes.phoneVerification);
              });
            },
            label: AppLocalizations.of(context)!.create_account,
            labelLoading: AppLocalizations.of(context)!.please_wait,
          ),
          const SizedBox(height: Const.space15),
          const _BuildTermsAndCondition(),
        ],
      ),
    );
  }
}
