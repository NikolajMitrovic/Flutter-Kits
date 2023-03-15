part of '../appointment_detail_page.dart';

class _BuildTotalPrice extends StatelessWidget {
  const _BuildTotalPrice({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  final AppointmentModel appointment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: Screens.width(context),
      margin: const EdgeInsets.all(Const.margin),
      padding: const EdgeInsets.all(Const.margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.primaryColor),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.total_price,
                style: theme.textTheme.headlineMedium,
              ),
              Text(
                NumberFormat.currency(
                  symbol: r'$',
                  decimalDigits: 0,
                ).format(appointment.totalPrice),
                style: theme.textTheme.headlineMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
