part of '../sign_in_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.welcome_back,
          style: theme.textTheme.displayMedium?.copyWith(
            color: theme.primaryColor,
          ),
        ),
        const SizedBox(height: Const.space5),
        Text(
          AppLocalizations.of(context)!.style_that_fit_your_lifestyle,
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
