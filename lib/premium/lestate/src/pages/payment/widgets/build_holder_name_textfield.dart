part of '../payment_page.dart';

class _BuildHolderNameTextField extends StatelessWidget {
  const _BuildHolderNameTextField({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: CustomTextFormField(
        controller: controller,
        hintText: AppLocalizations.of(context)!.card_holder_name,
        onChanged: onChanged,
      ),
    );
  }
}
