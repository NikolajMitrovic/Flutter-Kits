part of '../appointment_page.dart';

class _BuildAppointmentCard extends StatelessWidget {
  final AppointmentModel appointment;

  const _BuildAppointmentCard({Key? key, required this.appointment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String status(AppointmentStatus status) {
      switch (status) {
        case AppointmentStatus.pending:
          return AppLocalizations.of(context)!.pending;
        case AppointmentStatus.complete:
          return AppLocalizations.of(context)!.cancelled;

        case AppointmentStatus.cancel:
          return AppLocalizations.of(context)!.cancelled;
      }
    }

    return Container(
      width: Screens.width(context),
      margin: const EdgeInsets.only(
        bottom: Const.space15,
        left: Const.margin,
        right: Const.margin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.primaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Screens.width(context),
            height: 35,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(Const.radius),
                topLeft: Radius.circular(Const.radius),
              ),
            ),
            child: Center(
              child: Text(
                status(appointment.status!),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        appointment.barbershop?.images?.first ?? '',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: Const.space12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointment.barbershop?.name ?? '',
                        style: theme.textTheme.headlineMedium,
                      ),
                      const SizedBox(height: Const.space8),
                      Text(
                        appointment.barbershop?.address ?? '',
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: Const.space8),
                      Text(
                        '${appointment.date} - ${appointment.time}',
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: Const.space8),
                      if (appointment.status == AppointmentStatus.complete ||
                          appointment.status == AppointmentStatus.cancel)
                        const SizedBox()
                      else
                        GestureDetector(
                          onTap: () {
                            _cancelAppointmentDialog(context);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                FeatherIcons.trash,
                                color: theme.errorColor,
                                size: 17,
                              ),
                              Text(
                                AppLocalizations.of(context)!
                                    .cancel_appointment,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: theme.errorColor,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: theme.primaryColor),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    '${AppLocalizations.of(context)!.total}: \$${appointment.totalPrice}',
                    style: theme.textTheme.headlineMedium),
                GestureDetector(
                  onTap: () {
                    Get.toNamed<dynamic>(
                      BarberaRoutes.appointmentDetail,
                      arguments: appointment,
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context)!.view,
                    style: theme.textTheme.titleMedium
                        ?.copyWith(color: theme.primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> _cancelAppointmentDialog(
    BuildContext context,
  ) {
    final theme = Theme.of(context);

    return showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            AppLocalizations.of(context)!.cancel_appointment,
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineMedium,
          ),
          content: Text(
            AppLocalizations.of(context)!
                .are_you_sure_you_want_to_cancel_your_appointment,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall,
          ),
          actions: [
            CustomTextButton(
              onTap: Get.back,
              label: AppLocalizations.of(context)!.no,
            ),
            CustomTextButton(
              onTap: () {
                Get.back<dynamic>();
                showToast(
                  msg: AppLocalizations.of(context)!
                      .your_appointment_has_been_cancelled,
                );
              },
              label: AppLocalizations.of(context)!.yes_cancel,
            ),
          ],
        );
      },
    );
  }
}
