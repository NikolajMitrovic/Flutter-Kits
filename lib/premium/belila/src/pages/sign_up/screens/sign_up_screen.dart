part of '../sign_up_page.dart';

class BelilaSignUpScreen extends StatefulWidget {
  const BelilaSignUpScreen({Key? key}) : super(key: key);
  @override
  State<BelilaSignUpScreen> createState() => _BelilaSignUpScreenState();
}

class _BelilaSignUpScreenState extends State<BelilaSignUpScreen> {
  TextEditingController? _firstNameController;
  TextEditingController? _lastNameController;
  TextEditingController? _emailController;
  TextEditingController? _phoneController;
  TextEditingController? _passwordController;
  TextEditingController? _confirmPasswordController;

  bool _obscureText = true;
  bool _isLoading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _firstNameController!.dispose();
    _lastNameController!.dispose();
    _emailController!.dispose();
    _phoneController!.dispose();
    _passwordController!.dispose();
    _confirmPasswordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar:
          CustomAppBar(context, title: AppLocalizations.of(context)!.sign_up),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Center(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),

                ///
                /// [Header]
                ///
                _HeaderSection(
                  duration1: const Duration(milliseconds: 500),
                  duration2: const Duration(milliseconds: 600),
                  label1: AppLocalizations.of(context)!.create_an_account,
                  label2:
                      AppLocalizations.of(context)!.please_fill_your_account,
                ),

                const SizedBox(height: 50),

                ///
                /// [Body]
                ///

                _BodySection(
                  obscureText: _obscureText,
                  isLoading: _isLoading,
                  firstNameController: _firstNameController,
                  lastNameController: _lastNameController,
                  emailController: _emailController,
                  phoneController: _phoneController,
                  passwordController: _passwordController,
                  confirmPasswordController: _confirmPasswordController,
                  onHideTextTap: () {
                    setState(() => _obscureText = !_obscureText);
                  },
                  onGoogleTap: () {},
                  onSignUpTap: () {
                    setState(() {
                      _isLoading = true;
                    });
                    Future.delayed(const Duration(seconds: 2), () {
                      setState(() {
                        _isLoading = false;
                      });
                      Get.offAllNamed<dynamic>(BelilaRoutes.home);
                    });
                  },
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        '${AppLocalizations.of(context)!.already_have_an_account}?',
                        style: theme.textTheme.bodyMedium),
                    const SizedBox(width: Const.space8),
                    InkWell(
                      onTap: Get.back,
                      child: Text(
                        AppLocalizations.of(context)!.sign_in,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
