part of '../sign_in_page.dart';

class BellcommerceSignInScreen extends StatefulWidget {
  const BellcommerceSignInScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceSignInScreen> createState() =>
      _BellcommerceSignInScreenState();
}

class _BellcommerceSignInScreenState extends State<BellcommerceSignInScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    // final signInProv = Provider.of<SignInProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            const _BuildHeader(),
            const SizedBox(height: Const.space25),
            CustomTextFormField(
              controller: _emailController,
              hintText: AppLocalizations.of(context)!.email_address,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(FeatherIcons.mail),
            ),
            const SizedBox(height: Const.space15),
            CustomTextFormField(
              controller: _passwordController,
              obscureText: _obscureText,
              hintText: AppLocalizations.of(context)!.password,
              prefixIcon: const Icon(FeatherIcons.lock),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: const Icon(
                  FeatherIcons.eye,
                ),
              ),
            ),
            const SizedBox(height: Const.space25),
            const _BuildForgotPassword(),
            const SizedBox(height: Const.space25),
            // const SizedBox(height: 20),
            CustomElevatedButton(
              onTap: () {
                setState(() {
                  _isLoading = true;
                });
                Future.delayed(
                  const Duration(seconds: 2),
                  () {
                    setState(() {
                      _isLoading = false;
                    });
                    Get.toNamed<dynamic>(BellcommerceRoutes.home);
                  },
                );
              },
              isLoading: _isLoading,
              labelLoading: AppLocalizations.of(context)!.signing,
              label: AppLocalizations.of(context)!.sign_in,
            ),
            const SizedBox(height: Const.space25),
            const _BuildDivider(),
            const SizedBox(height: Const.space25),
            const _BuildSocialNetworkSign(),
            const SizedBox(height: Const.space25),
            const _BuildRegisterButton(),
          ],
        ),
      ),
    );
  }
}
