part of '../sign_up_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.lets_get_started,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: Const.space12),
        Text(
          AppLocalizations.of(context)!.create_a_new_account,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
