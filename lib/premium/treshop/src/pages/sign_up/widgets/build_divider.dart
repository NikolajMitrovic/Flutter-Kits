part of '../sign_up_page.dart';

class _BuildDivider extends StatelessWidget {
  const _BuildDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomShakeTransition(
      duration: const Duration(milliseconds: 950),
      child: Row(
        children: [
          Expanded(child: Divider(color: theme.hintColor)),
          const SizedBox(width: Const.space12),
          AutoSizeText(
            AppLocalizations.of(context)!.or_continue_with_email,
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(width: Const.space12),
          Expanded(child: Divider(color: theme.hintColor)),
        ],
      ),
    );
  }
}
