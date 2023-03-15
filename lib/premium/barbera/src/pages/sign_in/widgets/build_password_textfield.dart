part of '../sign_in_page.dart';

class _BuildPasswordTextField extends StatelessWidget {
  const _BuildPasswordTextField({
    Key? key,
    required this.passwordController,
    required this.obscureText,
    required this.onObscureTextTap,
  }) : super(key: key);

  final TextEditingController passwordController;
  final bool obscureText;
  final VoidCallback onObscureTextTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomTextFormField(
      controller: passwordController,
      obscureText: obscureText,
      textInputType: TextInputType.text,
      hintText: AppLocalizations.of(context)!.password,
      suffixIcon: IconButton(
        color: theme.primaryColor,
        onPressed: onObscureTextTap,
        icon: Icon(
          (obscureText == true) ? FeatherIcons.eye : FeatherIcons.eyeOff,
        ),
      ),
    );
  }
}
