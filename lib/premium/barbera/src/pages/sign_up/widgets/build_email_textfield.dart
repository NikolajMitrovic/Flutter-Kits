part of '../sign_up_page.dart';

class _BuildEmailTextField extends StatelessWidget {
  const _BuildEmailTextField({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: AppLocalizations.of(context)!.email_address,
      textInputType: TextInputType.emailAddress,
    );
  }
}
