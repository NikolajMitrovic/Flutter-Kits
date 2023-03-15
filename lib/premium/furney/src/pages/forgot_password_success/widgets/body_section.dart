part of '../forgot_password_success_page.dart';


class _BodySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        CustomShakeTransition(
          duration:const Duration(milliseconds: 800),
          child: AutoSizeText(
            AppLocalizations.of(context)!.password_successfully_reset,
            style: theme.textTheme.displayLarge,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: Const.space12),
        CustomShakeTransition(
          duration: const Duration(milliseconds: 900),
          child: AutoSizeText(
            // ignore: lines_longer_than_80_chars
            AppLocalizations.of(context)!.you_have_successfully_reset_your_password_Check_your_email_to_create_a_new_password,
            style: theme.textTheme.bodyMedium,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
