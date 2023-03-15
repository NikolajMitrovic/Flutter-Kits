part of '../barbershop_page.dart';

class _BuildSchedule extends StatelessWidget {
  final String day;
  final String open;
  final String close;
  final bool isClose;

  const _BuildSchedule({
    Key? key,
    required this.day,
    required this.open,
    required this.close,
    required this.isClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            day,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            isClose ? 'Close' : '$open to $close',
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
