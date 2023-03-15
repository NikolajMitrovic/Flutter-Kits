part of '../payment_page.dart';

class _PaymentCard extends StatelessWidget {
  final PaymentModel? payment;
  final VoidCallback? onPressed;
  final int index;
  final int selectedIndex;

  const _PaymentCard({
    Key? key,
    this.payment,
    this.onPressed,
    required this.index,
    required this.selectedIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space15,
        ),
        color: (index == selectedIndex)
            ? Theme.of(context).primaryColor.withOpacity(.2)
            : null,
        child: Row(
          children: [
            SvgPicture.asset(payment!.icon!),
            const SizedBox(width: Const.space15),
            Text(
              payment!.title!,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
