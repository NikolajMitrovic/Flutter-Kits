part of '../order_page.dart';

class _BuildBadgeTab extends StatelessWidget {
  final String label;
  final int value;

  const _BuildBadgeTab({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Text(
          label,
          style: theme.textTheme.headlineMedium,
        ),
        if (value == 0)
          const SizedBox()
        else
          const SizedBox(width: Const.space5),
        if (value == 0)
          const SizedBox()
        else
          CircleAvatar(
            radius: 10,
            backgroundColor : theme.primaryColor,
            child: Text(
              (value == 0) ? '' : value.toString(),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white,
              ),
            ),
          )
      ],
    );
  }
}
