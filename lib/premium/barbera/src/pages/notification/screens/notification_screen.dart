part of '../notification_page.dart';

class BarberaNotificationScreen extends StatelessWidget {
  const BarberaNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.notifications,
      ),
      body: ListView.builder(
        itemCount: notificationList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space15,
        ),
        itemBuilder: (context, index) {
          final notification = notificationList[index];
          return _BuildNotificationCard(notification: notification);
        },
      ),
    );
  }
}
