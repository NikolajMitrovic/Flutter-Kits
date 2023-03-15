part of '../forgot_password_page.dart';

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShakeTransition(
          child: AutoSizeText(
            AppLocalizations.of(context)!.forgot_password,
            style: theme.textTheme.displayLarge,
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 5),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 800),
          child: AutoSizeText(
            // ignore: lines_longer_than_80_chars
            AppLocalizations.of(context)!
                .please_Enter_your_eMail_Address_Your_will_Receive_a_link_to_Create_a_new_Password_via_email,
            style: theme.textTheme.bodyMedium,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
