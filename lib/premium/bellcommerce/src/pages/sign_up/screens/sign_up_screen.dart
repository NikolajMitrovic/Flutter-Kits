part of '../sign_up_page.dart';

class BellcommerceSignUpScreen extends StatefulWidget {
  const BellcommerceSignUpScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceSignUpScreen> createState() =>
      _BellcommerceSignUpScreenState();
}

class _BellcommerceSignUpScreenState extends State<BellcommerceSignUpScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  bool _obscureText = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _passwordController = TextEditingController(text: '');
    _confirmPasswordController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: <Widget>[
            const SizedBox(height: Const.space25),
            const _BuildHeader(),
            const SizedBox(height: Const.space25 * 2),
            CustomTextFormField(
              controller: _fullNameController,
              hintText: AppLocalizations.of(context)!.full_name,
              prefixIcon: const Icon(FeatherIcons.user),
            ),
            const SizedBox(height: Const.space15),
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
            const SizedBox(height: Const.space15),
            CustomTextFormField(
              controller: _confirmPasswordController,
              obscureText: _obscureText,
              hintText: AppLocalizations.of(context)!.confirm_password,
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
              labelLoading: AppLocalizations.of(context)!.please_wait,
              label: AppLocalizations.of(context)!.sign_up,
            ),
            const SizedBox(height: Const.space25),
            const _BuildLoginButton()
          ],
        ),
      ),
    );
  }
}
