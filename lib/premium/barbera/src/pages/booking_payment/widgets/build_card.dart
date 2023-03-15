part of '../booking_payment_page.dart';

class _BuildCard extends StatelessWidget {
  final PaymentMethod payment;
  final ValueChanged<PaymentMethod?>? onChanged;
  final VoidCallback onTap;
  final String icon;
  final String title;
  final String subtitle;
  final PaymentMethod value;

  const _BuildCard({
    Key? key,
    required this.payment,
    required this.onChanged,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: Screens.width(context),
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: payment == value
              ? theme.primaryColor
              : theme.unselectedWidgetColor,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(icon),
            title: Text(title, style: theme.textTheme.headlineMedium),
            subtitle: Text(subtitle, style: theme.textTheme.titleMedium),
            trailing: Radio<PaymentMethod>(
              value: value,
              groupValue: payment,
              focusColor: theme.primaryColor,
              activeColor: theme.primaryColor,
              hoverColor: theme.disabledColor,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
