part of '../coffee_page.dart';


class _BuildQuantity extends StatelessWidget {
  const _BuildQuantity({
    Key? key,
    required this.quantity,
    required this.onRemoveTap,
    required this.onAddTap,
  }) : super(key: key);

  final int quantity;
  final VoidCallback onRemoveTap;
  final VoidCallback onAddTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            AppLocalizations.of(context)!.quantity,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Container(
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(color: theme.disabledColor),
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed:onRemoveTap,
                icon: const Icon(Icons.remove),
              ),
              Text(
                quantity.toString(),
                style: theme.textTheme.bodyMedium,
              ),
              IconButton(
                onPressed: onAddTap,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        )
      ],
    );
  }
}
