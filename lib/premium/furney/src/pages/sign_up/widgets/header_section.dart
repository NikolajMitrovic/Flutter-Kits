part of '../sign_up_page.dart';

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomShakeTransition(
          child: AutoSizeText(
            AppLocalizations.of(context)!.create_an_account,
            style: theme.textTheme.displayLarge,
            maxLines: 1,
          ),
        ),
        const SizedBox(height: 5),
        CustomShakeTransition(
          duration:const Duration(milliseconds: 800),
          child: AutoSizeText(
            AppLocalizations.of(context)!.enter_your_details_informations,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
