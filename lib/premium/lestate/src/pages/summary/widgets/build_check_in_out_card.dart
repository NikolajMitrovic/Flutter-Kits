part of '../summary_page.dart';


class _BuildCheckInOutCard extends StatelessWidget {
  final bool isCheckIn;
  final VoidCallback onTap;
  final String value;

  const _BuildCheckInOutCard({
    Key? key,
    required this.isCheckIn,
    required this.onTap,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                (isCheckIn == true)
                    ? AppLocalizations.of(context)!.check_in
                    : AppLocalizations.of(context)!.check_out,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(width: Const.space8),
              Icon(
                (isCheckIn == true) ? IconlyBold.arrowDown : IconlyBold.arrowUp,
                color: (isCheckIn == true) ? Colors.green : Colors.red,
                size: 17,
              ),
            ],
          ),
          const SizedBox(height: Const.space8),
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(Const.radius),
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.radius),
                border: Border.all(color: theme.disabledColor),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FeatherIcons.calendar,
                    color: theme.disabledColor,
                    size: 17,
                  ),
                  const SizedBox(width: Const.space12),
                  Text(
                    value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
