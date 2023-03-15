part of '../notification_page.dart';

class _BuildNotificationCard extends StatelessWidget {
  final VoidCallback? onDeleteTap;
  final NotificationModel notification;

  const _BuildNotificationCard(
      {Key? key, this.onDeleteTap, required this.notification})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String icon(String? val) {
      switch (val) {
        case 'waiting':
          return Images.payment;
        case 'packaging':
          return Images.package;
        case 'on_delivery':
          return Images.travelling;
        case 'done':
          return Images.done;
        case 'rating':
          return Images.rating;
        default:
          return '';
      }
    }

    String title(String? val) {
      switch (val) {
        case 'waiting':
          return AppLocalizations.of(context)!.waiting_for_payment;
        case 'packaging':
          return AppLocalizations.of(context)!.packages_are_being_packed;
        case 'on_delivery':
          return AppLocalizations.of(context)!.package_on_the_way;
        case 'done':
          return AppLocalizations.of(context)!.the_package_has_arrived;
        case 'rating':
          return AppLocalizations.of(context)!.rate_the_product;
        default:
          return '';
      }
    }

    String subtitle(String? val) {
      switch (val) {
        case 'waiting':
          return AppLocalizations.of(context)!
              .your_package_has_been_placedwe_are_waiting_for_payment_to_continue_the_next_process;
        case 'packaging':
          return AppLocalizations.of(context)!
              .hooray_your_package_is_being_packed_please_wait_for_the_seller_to_deliver_your_package;
        case 'on_delivery':
          return AppLocalizations.of(context)!
              .the_package_is_on_its_way_please_wait_until_your_package_arrives_at_your_home;
        case 'done':
          return AppLocalizations.of(context)!
              .the_package_has_arrived_at_your_house_immediately_confirm_your_order;
        case 'rating':
          return AppLocalizations.of(context)!
              .thank_you_for_shopping_give_an_assessment_to_help_us_keep_growing_and_getting_better;
        default:
          return '';
      }
    }

    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            label: AppLocalizations.of(context)!.delete,
            backgroundColor : theme.errorColor,
            icon: FeatherIcons.trash,
            onPressed: (context) => onDeleteTap,
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset(
          icon(notification.status),
          width: 30,
          height: 30,
        ),
        title:
            Text(title(notification.status), style: theme.textTheme.headlineMedium),
        subtitle: Text(subtitle(notification.status),
            style: theme.textTheme.titleSmall),
      ),
    );
  }
}
