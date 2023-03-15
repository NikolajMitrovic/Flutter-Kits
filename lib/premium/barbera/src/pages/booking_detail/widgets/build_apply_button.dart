part of '../booking_detail_page.dart';


class _BuildApplyButton extends StatelessWidget {
  const _BuildApplyButton({
    Key? key,
    required this.onApplyTap,
  }) : super(key: key);

  final VoidCallback onApplyTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return GestureDetector(
      onTap: onApplyTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.apply_coupon,
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: 6),
            Divider(color: theme.primaryColor),
          ],
        ),
      ),
    );
  }
}
