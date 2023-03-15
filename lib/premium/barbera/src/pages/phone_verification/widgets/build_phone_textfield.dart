part of '../phone_verification_page.dart';

class _BuildPhoneTextField extends StatelessWidget {
  const _BuildPhoneTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      textInputType: TextInputType.phone,
      hintText: AppLocalizations.of(context)!.phone_number,
    );
  }
}
