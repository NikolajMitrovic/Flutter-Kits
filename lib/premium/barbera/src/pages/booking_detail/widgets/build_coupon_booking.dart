part of  '../booking_detail_page.dart';



class _BuildCouponBooking extends StatelessWidget {
  const _BuildCouponBooking({
    Key? key,
    required this.couponController,
    required this.onApplyTap,
  }) : super(key: key);

  final TextEditingController couponController;
  final VoidCallback onApplyTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      width: Screens.width(context),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: theme.primaryColor),
        borderRadius: BorderRadius.circular(Const.space12),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: theme.primaryColor,
              controller: couponController,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.enter_coupon,
                hintStyle: theme.textTheme.titleSmall,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: Const.margin,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onApplyTap,
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                color: theme.primaryColor,
                border: Border.all(color: theme.primaryColor),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(Const.radius),
                  bottomRight: Radius.circular(Const.radius),
                ),
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.apply,
                  style: theme.textTheme.button,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
