part of '../sign_up_page.dart';

class _BuildRegisterButton extends StatelessWidget {
  const _BuildRegisterButton({
    Key? key,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
    required this.onSignUpTap,
  }) : super(key: key);

  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSignUpTap;

  @override
  Widget build(BuildContext context) {

    return CustomFadeTransition(
      duration: const Duration(milliseconds: 700),
      child: CustomElevatedButton(
        onTap: onSignUpTap,
        label: AppLocalizations.of(context)!.sign_up,
      ),
    );
  }
}
