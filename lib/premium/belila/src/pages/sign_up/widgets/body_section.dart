part of '../sign_up_page.dart';

class _BodySection extends StatelessWidget {
  final bool? obscureText;
  final bool isLoading;
  final TextEditingController? firstNameController;
  final TextEditingController? lastNameController;
  final TextEditingController? emailController;
  final TextEditingController? phoneController;
  final TextEditingController? passwordController;
  final TextEditingController? confirmPasswordController;
  final VoidCallback? onHideTextTap;
  final VoidCallback? onSignUpTap;
  final VoidCallback? onGoogleTap;

  const _BodySection({
    Key? key,
    this.obscureText,
    required this.isLoading,
    this.firstNameController,
    this.lastNameController,
    this.emailController,
    this.phoneController,
    this.passwordController,
    this.confirmPasswordController,
    this.onHideTextTap,
    this.onSignUpTap,
    this.onGoogleTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        ShakeTransition(
          duration: const Duration(milliseconds: 700),
          child: Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  controller: firstNameController,
                  hintText: AppLocalizations.of(context)!.first_name,
                ),
              ),
              const SizedBox(width: Const.space12),
              Expanded(
                child: CustomTextFormField(
                  controller: lastNameController,
                  hintText: AppLocalizations.of(context)!.last_name,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: Const.space15),

        ///
        /// [Email Address]
        ///

        ShakeTransition(
          duration: const Duration(milliseconds: 800),
          child: CustomTextFormField(
            controller: emailController,
            textFieldType: TextFieldType.email,
            hintText: AppLocalizations.of(context)!.email,
          ),
        ),
        const SizedBox(height: Const.space15),

        ///
        /// [Phone Number]
        ///

        ShakeTransition(
          duration: const Duration(milliseconds: 900),
          child: CustomTextFormField(
            controller: phoneController,
            textFieldType: TextFieldType.phoneNumber,
            hintText: AppLocalizations.of(context)!.phone_number,
          ),
        ),

        const SizedBox(height: Const.space15),

        ///
        /// [Password]
        ///

        ShakeTransition(
          duration: const Duration(milliseconds: 1000),
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

        ///
        /// [Confirm Password]
        ///

        ShakeTransition(
          duration: const Duration(milliseconds: 1100),
          child: CustomTextFormField(
            obscureText: obscureText,
            controller: confirmPasswordController,
            textFieldType: TextFieldType.password,
            hintText: AppLocalizations.of(context)!.confirm_password,
            suffixIcon: IconButton(
              icon: Icon((obscureText == true)
                  ? Icons.visibility_off
                  : Icons.visibility),
              color: theme.primaryColor,
              onPressed: onHideTextTap,
            ),
          ),
        ),
        const SizedBox(height: Const.space25),
        ShakeTransition(
          duration: const Duration(milliseconds: 1200),
          child: CustomElevatedButton(
            onTap: onSignUpTap,
            label: AppLocalizations.of(context)!.sign_up,
            isLoading: isLoading,
          ),
        ),
        const SizedBox(height: Const.space15),

        ShakeTransition(
          duration: const Duration(milliseconds: 1300),
          child: Text(
            // ignore: lines_longer_than_80_chars
            '${AppLocalizations.of(context)!.or}\n${AppLocalizations.of(context)!.sign_in_with}',
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: Const.space15),

        ShakeTransition(
          duration: const Duration(milliseconds: 1400),
          child: CustomElevatedButton(
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
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
