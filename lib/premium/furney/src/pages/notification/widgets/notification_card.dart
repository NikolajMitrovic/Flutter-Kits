part of '../notification_page.dart';

class _NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const _NotificationCard({Key? key, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 7,
      margin: const EdgeInsets.fromLTRB(
        Const.margin,
        0,
        Const.margin,
        Const.margin,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: Screens.width(context),
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(Const.space12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(CustomIcon.promo),
                const SizedBox(width: Const.space15),
                AutoSizeText(
                  AppLocalizations.of(context)!.promo,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(width: Const.space12),
                AutoSizeText(
                  '•',
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(width: Const.space12),
                AutoSizeText(
                  timeago.format(DateTime.now()),
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: Const.space12),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CustomNetworkImage(
                  image: notification.image!,
                  width: Screens.width(context),
                ),
              ),
            ),
            const SizedBox(height: Const.space15),
            AutoSizeText(
              notification.title!,
              style: theme.textTheme.displaySmall?.copyWith(height: 1.2),
            ),
            const SizedBox(height: Const.space8),
            AutoSizeText(
              notification.subtitle!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall?.copyWith(height: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
