part of '../filter_page.dart';

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    Key? key,
    required this.selectedItem,
    required this.property,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final int selectedItem;
  final String property;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(Const.radius),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.space12,
        ),
        margin: const EdgeInsets.only(right: Const.space15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Const.radius),
          color: (selectedItem == index) ? Const.accentColor : null,
          border: Border.all(
            color: (selectedItem == index)
                ? Const.accentColor
                : theme.disabledColor,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          property,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: (selectedItem == index) ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
