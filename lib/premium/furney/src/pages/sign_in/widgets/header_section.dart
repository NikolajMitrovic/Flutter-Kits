part of '../sign_in_page.dart';

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShakeTransition(
          child: AutoSizeText(
            AppLocalizations.of(context)!.lets_sign_you_in,
            style: theme.textTheme.displayLarge,
            maxLines: 1,
          ),
        ),
       const SizedBox(height: 5),
        CustomShakeTransition(
          duration:const Duration(milliseconds: 800),
          child: AutoSizeText(
            AppLocalizations.of(context)!.to_continue_first_verify_that_its_you,
            style: theme.textTheme.bodyMedium,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
