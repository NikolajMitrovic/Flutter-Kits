part of '../sign_in_page.dart';

class BelilaSignInScreen extends StatefulWidget {
  const BelilaSignInScreen({Key? key}) : super(key: key);
  @override
  State<BelilaSignInScreen> createState() => _BelilaSignInScreenState();
}

class _BelilaSignInScreenState extends State<BelilaSignInScreen> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;
  bool _rememberMe = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController!.dispose();
    _passwordController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: '',
        enableLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Center(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _HeaderSection(),
                const SizedBox(height: Const.space25),
                CustomElevatedButton(
                  onTap: () {
                    showToast(
                      msg: AppLocalizations.of(context)!.connect_with_google,
                    );
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(CustomIcons.google),
                      const SizedBox(width: Const.space12),
                      Text(
                        AppLocalizations.of(context)!.sign_in_with_google,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: ColorLight.fontTitle,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: Const.space25),
                Row(
                  children: [
                    Expanded(child: Divider(color: theme.hintColor)),
                    const SizedBox(width: Const.space12),
                    Text(
                      AppLocalizations.of(context)!.or_login_with_email,
                      style: theme.textTheme.headlineMedium,
                    ),
                    const SizedBox(width: Const.space12),
                    Expanded(child: Divider(color: theme.hintColor)),
                  ],
                ),
                const SizedBox(height: Const.space25),
                _BodySection(
                  obscureText: _obscureText,
                  rememberMe: _rememberMe,
                  isLoading: _isLoading,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  onHideTextTap: () {
                    setState(() => _obscureText = !_obscureText);
                  },
                  onRememberTap: (val) => setState(() {
                    _rememberMe = !_rememberMe;
                  }),
                  onSignInTap: () {
                    setState(() {
                      _isLoading = true;
                    });
                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        _isLoading = false;
                      });
                      Get.offAllNamed<dynamic>(BelilaRoutes.home);
                    });
                  },
                ),
                Text(
                  AppLocalizations.of(context)!.by_sign_in_you_agree_to_the,
                  style: theme.textTheme.titleSmall,
                ),
                InkWell(
                  onTap: () {
                    showToast(
                      msg: AppLocalizations.of(context)!.terms_and_condition,
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context)!.terms_and_condition,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
                const SizedBox(height: Const.space25),
                CustomTextButton(
                  onTap: () => Get.toNamed<dynamic>(BelilaRoutes.resetPassword),
                  label: AppLocalizations.of(context)!.forgot_password,
                ),
                const SizedBox(height: Const.space25),
                _FooterSection(
                  duration: const Duration(milliseconds: 1200),
                  onSignUpTap: () => Get.toNamed<dynamic>(BelilaRoutes.signUp),
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
