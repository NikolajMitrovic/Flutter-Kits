part of '../cart_page.dart';

class _BuildCartListTile extends StatelessWidget {
  final String title;
  final int value;

  const _BuildCartListTile({Key? key, required this.title, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SizedBox(
          width: Screens.width(context) / 2.5,
          child: AutoSizeText(
            title,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        AutoSizeText(':', style: theme.textTheme.bodyLarge),
       const Spacer(),
        AutoSizeText(
          NumberFormat.currency(symbol: r'$').format(value),
          style: theme.textTheme.headlineMedium,
        ),
      ],
    );
  }
}
