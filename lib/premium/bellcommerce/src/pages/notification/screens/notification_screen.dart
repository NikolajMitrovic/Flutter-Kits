part of '../notification_page.dart';

class BellcommerceNotificationScreen extends StatelessWidget {
  const BellcommerceNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.notifications,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: [
            ListTile(
              onTap: ()=> Get.toNamed<dynamic>(BellcommerceRoutes.offer),
              contentPadding: EdgeInsets.zero,
              leading: SvgPicture.asset(Assets.offer),
              title: Text(
                AppLocalizations.of(context)!.offers,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor : theme.primaryColor,
                child: Text(
                  '5',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
             onTap: ()=> Get.toNamed<dynamic>(BellcommerceRoutes.feed),
              contentPadding: EdgeInsets.zero,
              leading: SvgPicture.asset(Assets.feed),
              title: Text(
                AppLocalizations.of(context)!.feeds,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor : theme.primaryColor,
                child: Text(
                  '2',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
             onTap: ()=> Get.toNamed<dynamic>(BellcommerceRoutes.activity),
              contentPadding: EdgeInsets.zero,
              leading: SvgPicture.asset(Assets.activity),
              title: Text(
                AppLocalizations.of(context)!.activities,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor : theme.primaryColor,
                child: Text(
                  '6',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
