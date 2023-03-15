part of '../sign_up_page.dart';


class _BuildFullNameTextField extends StatelessWidget {
  const _BuildFullNameTextField({
    Key? key,
    required this. fullNameController,
  })  : super(key: key);

  final TextEditingController fullNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: AppLocalizations.of(context)!.full_name,
    );
  }
}
