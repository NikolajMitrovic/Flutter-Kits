part of '../forgot_password_page.dart';

class _BodySection extends StatelessWidget {
  final TextEditingController? emailController;

  const _BodySection({Key? key, this.emailController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShakeTransition(
          duration: const Duration(milliseconds: 900),
          child: AutoSizeText(
            '${AppLocalizations.of(context)!.email_address}*',
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
       const SizedBox(height: 5),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 1000),
          child: CustomTextFormField(
            controller: emailController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.enter_email_address,
            textFieldType: TextFieldType.email,
          ),
        ),
      ],
    );
  }
}
