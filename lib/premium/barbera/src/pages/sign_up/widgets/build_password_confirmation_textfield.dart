part of '../sign_up_page.dart';

class _BuildPasswordConfirmationTextField extends StatelessWidget {
  const _BuildPasswordConfirmationTextField({
    Key? key,
    required this.obscureText,
    required this.passwordConfirmationController,
    required this.onObscureTextTap,
  }) : super(key: key);

  final bool obscureText;
  final TextEditingController passwordConfirmationController;
  final VoidCallback onObscureTextTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomTextFormField(
      obscureText: obscureText,
      controller: passwordConfirmationController,
      hintText: AppLocalizations.of(context)!.password_confirmation,
      suffixIcon: IconButton(
        onPressed: onObscureTextTap,
        color: theme.primaryColor,
        icon: Icon(
          (obscureText == true) ? FeatherIcons.eye : FeatherIcons.eyeOff,
        ),
      ),
    );
  }
}
