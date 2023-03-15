part of '../appointment_detail_page.dart';

class _BuildServiceDetail extends StatelessWidget {
  const _BuildServiceDetail({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  final AppointmentModel appointment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String status(AppointmentStatus status) {
      switch (status) {
        case AppointmentStatus.pending:
          return AppLocalizations.of(context)!.pending;
        case AppointmentStatus.complete:
          return AppLocalizations.of(context)!.completed;
        case AppointmentStatus.cancel:
          return AppLocalizations.of(context)!.cancelled;
      }
    }

    Color statusColor(AppointmentStatus status) {
      switch (status) {
        case AppointmentStatus.pending:
          return Colors.amber;
        case AppointmentStatus.complete:
          return Colors.green;
        case AppointmentStatus.cancel:
          return Colors.red;
      }
    }

    return Container(
      width: Screens.width(context),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      padding: const EdgeInsets.all(Const.margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.space12),
        border: Border.all(color: theme.primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.services,
                  style: theme.textTheme.headlineSmall),
              Text(AppLocalizations.of(context)!.price,
                  style: theme.textTheme.headlineSmall),
            ],
          ),
          const SizedBox(height: Const.space12),
          Column(
            children: appointment.services!
                .map(
                  (e) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        e.name ?? '',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.unselectedWidgetColor,
                        ),
                      ),
                      Text(
                        NumberFormat.currency(
                          symbol: r'$',
                          decimalDigits: 0,
                        ).format(e.price),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.unselectedWidgetColor,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: Const.space12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.estimated_duration,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                AppLocalizations.of(context)!.payment_status,
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${appointment.totalDuration} min',
                  style: theme.textTheme.bodyMedium),
              Text(
                status(appointment.status!),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: statusColor(appointment.status!),
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space12),
          Text(
            AppLocalizations.of(context)!.appointment_number,
            style: theme.textTheme.headlineSmall,
          ),
          Text(
            appointment.bookingNumber ?? '',
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
