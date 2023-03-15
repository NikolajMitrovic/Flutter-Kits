part of '../cart_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Text(
        AppLocalizations.of(context)!.my_cart,
        style: theme.textTheme.displayLarge,
      ),
    );
  }
}
