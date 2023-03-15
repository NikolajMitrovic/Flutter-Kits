part of '../forgot_password_page.dart';

class _BodySection extends StatelessWidget {
  final TextEditingController? emailController;
  final VoidCallback? onResetTap;
  final bool isLoading;

  const _BodySection({
    Key? key,
    this.emailController,
    this.onResetTap,
    required this.isLoading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CustomShakeTransition(
            duration: const Duration(milliseconds: 800),
            child: Text(
              AppLocalizations.of(context)!.reset_password,
              style: theme.textTheme.displayLarge,
            ),
          ),
        ),
        const SizedBox(height: Const.space25),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 900),
          child: Text(
            AppLocalizations.of(context)!
                .please_enter_the_email_address_you_used_at_the_time_of_registration_to_get_the_password_reset_instructions,
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: Const.space25),
        CustomFadeTransition(
          duration: const Duration(milliseconds: 400),
          child: Text(AppLocalizations.of(context)!.email,
              style: theme.textTheme.titleMedium),
        ),
        const SizedBox(height: Const.space8),
        CustomFadeTransition(
          duration: const Duration(milliseconds: 500),
          child: CustomTextFormField(
            controller: emailController,
            hintText: AppLocalizations.of(context)!.enter_email_address,
            textFieldType: TextFieldType.email,
            borderType: BorderType.underline,
          ),
        ),
        const SizedBox(height: Const.space25),
        if (isLoading == true)
          const CustomLoadingIndicator()
        else
          CustomFadeTransition(
            axis: Axis.vertical,
            duration: const Duration(milliseconds: 600),
            child: CustomElevatedButton(
              label: AppLocalizations.of(context)!.reset,
              onTap: onResetTap,
            ),
          ),
      ],
    );
  }
}
