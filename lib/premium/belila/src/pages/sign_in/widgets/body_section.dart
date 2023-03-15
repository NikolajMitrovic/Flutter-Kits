part of '../sign_in_page.dart';

class _BodySection extends StatelessWidget {
  final bool? obscureText;
  final bool? rememberMe;
  final bool isLoading;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final ValueChanged<bool?>? onRememberTap;
  final VoidCallback? onHideTextTap;
  final VoidCallback? onSignInTap;

  const _BodySection({
    Key? key,
    required this.emailController,
    this.passwordController,
    this.obscureText,
    this.onHideTextTap,
    this.onSignInTap,
    this.rememberMe,
    this.onRememberTap,
   required this.isLoading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        ShakeTransition(
          duration: const Duration(milliseconds: 700),
          child: CustomTextFormField(
            controller: emailController,
            textFieldType: TextFieldType.email,
            hintText: AppLocalizations.of(context)!.email,
          ),
        ),
        const SizedBox(height: Const.space15),
        ShakeTransition(
          duration: const Duration(milliseconds: 800),
          child: CustomTextFormField(
            obscureText: obscureText,
            controller: passwordController,
            textFieldType: TextFieldType.password,
            hintText: AppLocalizations.of(context)!.password,
            suffixIcon: IconButton(
              icon: Icon((obscureText == true)
                  ? Icons.visibility_off
                  : Icons.visibility),
              color: theme.primaryColor,
              onPressed: onHideTextTap,
            ),
          ),
        ),
        const SizedBox(height: Const.space15),
        ShakeTransition(
          duration: const Duration(milliseconds: 900),
          child: Row(
            children: [
              Checkbox(
                value: rememberMe,
                activeColor: theme.primaryColor,
                onChanged: onRememberTap,
              ),
              const SizedBox(width: Const.space5),
              Text(AppLocalizations.of(context)!.remember_me,
                  style: theme.textTheme.titleSmall)
            ],
          ),
        ),
        const SizedBox(height: Const.space15),
        ShakeTransition(
          duration: const Duration(milliseconds: 1000),
          child: CustomElevatedButton(
            onTap: onSignInTap,
            label: AppLocalizations.of(context)!.sign_in,
            isLoading: isLoading,
          ),
        ),
        const SizedBox(height: Const.space25),
      ],
    );
  }
}
