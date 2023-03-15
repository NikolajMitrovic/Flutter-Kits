part of '../sign_up_page.dart';


class _BuildHeader extends StatelessWidget {
  const _BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.create_an_account,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space5),
        Text(
          AppLocalizations.of(context)!.sign_up_to_continue,
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
