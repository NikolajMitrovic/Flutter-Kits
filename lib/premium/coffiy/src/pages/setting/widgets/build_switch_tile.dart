part of '../setting_page.dart';


class _BuildSwitchTile extends StatelessWidget {
  const _BuildSwitchTile({
    Key? key,
    required this.value,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final bool value;
  final String label;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyMedium,
        ),
        Switch(
          value: value,
          activeColor: theme.primaryColor,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
