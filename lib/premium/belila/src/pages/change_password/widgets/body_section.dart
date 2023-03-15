part of '../change_password_page.dart';

class _BodySection extends StatelessWidget {
  final bool isLoading;
  final bool? obscureText;
  final GlobalKey<FormState>? formKey;
  final TextEditingController? currentPasswordController;
  final TextEditingController? newPasswordController;
  final TextEditingController? confirmPasswordController;
  final VoidCallback? onSavedTap;
  final VoidCallback? onHideTextTap;
  const _BodySection({
    Key? key,
    this.isLoading = false,
    this.formKey,
    this.currentPasswordController,
    this.newPasswordController,
    this.confirmPasswordController,
    this.onSavedTap,
    this.obscureText,
    this.onHideTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      children: [
        Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShakeTransition(
                duration: const Duration(milliseconds: 500),
                child: CustomTextFormField(
                  obscureText: obscureText,
                  controller: currentPasswordController,
                  hintText: AppLocalizations.of(context)!.current_password,
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
                duration: const Duration(milliseconds: 600),
                child: CustomTextFormField(
                  obscureText: obscureText,
                  controller: newPasswordController,
                  hintText: AppLocalizations.of(context)!.new_password,
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
                duration: const Duration(milliseconds: 700),
                child: CustomTextFormField(
                  obscureText: obscureText,
                  controller: confirmPasswordController,
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
                duration: const Duration(milliseconds: 800),
                child: CustomElevatedButton(
                  onTap: onSavedTap,
                  label: AppLocalizations.of(context)!.confirm,
                  isLoading: isLoading,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
