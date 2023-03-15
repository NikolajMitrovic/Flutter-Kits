part of '../sign_in_page.dart';

class _BodySection extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;
  final VoidCallback? onSignInTap;
  final VoidCallback? onForgotPasswordTap;
  final VoidCallback? onObscureTextTap;
  final bool? obscureText;
  final bool isLoading;

  const _BodySection({
    Key? key,
    this.emailController,
    this.passwordController,
    this.onSignInTap,
    this.onForgotPasswordTap,
    this.onObscureTextTap,
    this.obscureText,
    required this.isLoading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFadeTransition(
              duration: const Duration(milliseconds: 500),
              child: Text(
                AppLocalizations.of(context)!.welcome,
                style: theme.textTheme.displayMedium,
              ),
            ),
            const SizedBox(height: 8),
            CustomFadeTransition(
              duration: const Duration(milliseconds: 600),
              child: Text(AppLocalizations.of(context)!.sign_in_to_continue,
                  style: theme.textTheme.titleSmall),
            ),
            const SizedBox(height: Const.space25),
            CustomFadeTransition(
              duration: const Duration(milliseconds: 800),
              child: Text(AppLocalizations.of(context)!.email,
                  style: theme.textTheme.titleMedium),
            ),
            const SizedBox(height: Const.space8),
            CustomFadeTransition(
              child: CustomTextFormField(
                controller: emailController,
                hintText: AppLocalizations.of(context)!.enter_email_address,
                textFieldType: TextFieldType.email,
                borderType: BorderType.underline,
              ),
            ),
            const SizedBox(height: Const.space15),
            CustomFadeTransition(
              duration: const Duration(milliseconds: 800),
              child: Text(AppLocalizations.of(context)!.password,
                  style: theme.textTheme.titleMedium),
            ),
            const SizedBox(height: Const.space8),
            CustomFadeTransition(
              child: CustomTextFormField(
                controller: passwordController,
                obscureText: obscureText,
                hintText: AppLocalizations.of(context)!.enter_password,
                textFieldType: TextFieldType.password,
                borderType: BorderType.underline,
                suffixIcon: IconButton(
                  color: theme.primaryColor,
                  icon: Icon(
                    (obscureText == true)
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: onObscureTextTap,
                ),
              ),
            ),
            const SizedBox(height: Const.space15),
            Align(
              alignment: Alignment.topRight,
              child: CustomFadeTransition(
                duration: const Duration(milliseconds: 1000),
                child: CustomTextButton(
                  label: AppLocalizations.of(context)!.forgot_password,
                  onTap: onForgotPasswordTap,
                ),
              ),
            ),
            const SizedBox(height: Const.space15),
            if (isLoading == true)
              const CustomLoadingIndicator()
            else
              CustomFadeTransition(
                axis: Axis.vertical,
                duration: const Duration(milliseconds: 1100),
                child: CustomElevatedButton(
                  label: AppLocalizations.of(context)!.sign_in,
                  onTap: onSignInTap,
                ),
              )
          ],
        ),
      ),
    );
  }
}
