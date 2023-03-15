part of '../sign_in_page.dart';

class _BuildSignInButton extends StatelessWidget {
  const _BuildSignInButton({
    Key? key,
    required this.emailController,
    required this.passwordController,
    required this.onSignInTap,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSignInTap;

  @override
  Widget build(BuildContext context) {
    
    return CustomFadeTransition(
      duration: const Duration(milliseconds: 700),
      child: CustomElevatedButton(
        onTap: onSignInTap,
        label: AppLocalizations.of(context)!.sign_in,
      ),
    );
  }
}
