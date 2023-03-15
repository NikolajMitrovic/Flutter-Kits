part of '../booking_detail_page.dart';


class _BuildCouponSuccess extends StatelessWidget {
  const _BuildCouponSuccess({
    Key? key,
    required this.isCorrect,
    required this.couponController,
  }) : super(key: key);

  final bool isCorrect;
  final TextEditingController couponController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(Const.space15),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      decoration: BoxDecoration(
        border: Border.all(
          color: isCorrect ? Colors.green : theme.errorColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            couponController.text,
            style: theme.textTheme.displaySmall,
          ),
          Text(
            isCorrect ? 'COUPON APPLIED' : 'COUPON DECLINED',
            style: theme.textTheme.displaySmall?.copyWith(
                color: isCorrect ? Colors.green : theme.errorColor),
          ),
        ],
      ),
    );
  }
}
