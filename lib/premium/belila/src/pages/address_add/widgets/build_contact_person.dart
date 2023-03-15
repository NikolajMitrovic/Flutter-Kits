part of '../address_add_page.dart';

class _BuildContactPerson extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController mobileNumberController;
  final VoidCallback onTap;

  const _BuildContactPerson({
    Key? key,
    required this.fullNameController,
    required this.mobileNumberController,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Const.space25),
            Text(
              // ignore: lines_longer_than_80_chars
              AppLocalizations.of(context)!
                  .please_fill_in_the_recipients_name_and_contact_number,
              style: theme.textTheme.displayLarge,
            ),
            const SizedBox(height: 50),
            Text(
              AppLocalizations.of(context)!.full_name,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: Const.space8),
            CustomTextFormField(
              controller: fullNameController,
              hintText: AppLocalizations.of(context)!.full_name,
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!.phone_number,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: Const.space8),
            CustomTextFormField(
              controller: mobileNumberController,
              textFieldType: TextFieldType.phoneNumber,
              hintText: AppLocalizations.of(context)!.phone_number,
            ),
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              onTap: onTap,
              label: AppLocalizations.of(context)!.next,
            )
          ],
        ),
      ),
    );
  }
}
