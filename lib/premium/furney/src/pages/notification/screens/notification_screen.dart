part of '../notification_page.dart';

class FurneyNotificationScreen extends StatelessWidget {
  const FurneyNotificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.notifications,
      ),
      body: ListView.builder(
        itemCount: NotificationList.notificationList().length,
        itemBuilder: (context, index) {
          final data = NotificationList.notificationList()[index];

          return _NotificationCard(notification: data);
        },
      ),
    );
  }
}
