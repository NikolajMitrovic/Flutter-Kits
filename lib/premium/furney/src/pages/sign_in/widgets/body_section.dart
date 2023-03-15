part of '../sign_in_page.dart';

class _BodySection extends StatelessWidget {
  const _BodySection({
    Key? key,
    required this.emailController,
    required this.passwordController,
    this.obscureText,
    this.onObscureTextTap,
  }) : super(key: key);

  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final bool? obscureText;
  final VoidCallback? onObscureTextTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShakeTransition(
          duration:const Duration(milliseconds: 900),
          child: AutoSizeText(
            '${AppLocalizations.of(context)!.email_address}*',
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
       const SizedBox(height: 5),
        CustomShakeTransition(
          duration:const Duration(milliseconds: 1000),
          child: CustomTextFormField(
            controller: emailController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_email_address,
            textFieldType: TextFieldType.email,
          ),
        ),
      const  SizedBox(height: Const.space25),
        CustomShakeTransition(
          duration:const Duration(milliseconds: 1100),
          child: AutoSizeText(
            '${AppLocalizations.of(context)!.password}*',
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
       const SizedBox(height: 5),
        CustomShakeTransition(
          duration:const Duration(milliseconds: 1200),
          child: CustomTextFormField(
            obscureText: obscureText,
            controller: passwordController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_password,
            textFieldType: TextFieldType.password,
            suffixIcon: IconButton(
              icon: Icon(
                (obscureText == true) ? FeatherIcons.eye : FeatherIcons.eyeOff,
                color: theme.primaryColor,
              ),
              onPressed: onObscureTextTap,
            ),
          ),
        ),
      ],
    );
  }
}
