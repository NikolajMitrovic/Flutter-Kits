part of '../sign_up_page.dart';


class _BuildDivider extends StatelessWidget {
  const _BuildDivider({
    Key? key, 
  }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(child: Divider(color: theme.disabledColor)),
        const SizedBox(width: Const.space15),
        Text(
          AppLocalizations.of(context)!.or,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(width: Const.space15),
        Expanded(child: Divider(color: theme.disabledColor)),
      ],
    );
  }
}
