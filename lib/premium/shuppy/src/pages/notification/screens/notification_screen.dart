part of '../notification_page.dart';

class ShuppyNotificationScreen extends StatelessWidget {
  const ShuppyNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.notifications,
        enableLeading: false
      ),
      body: ListView.builder(
        itemCount: LocalList.notificationList().length,
        itemBuilder: (context, index) {
          final data = LocalList.notificationList()[index];
          return _BuildNotificationCard(
            notification: data,
            onDeleteTap: () {
              showToast(msg: AppLocalizations.of(context)!.notification_delete_clicked);
            },
          );
        },
      ),
    );
  }
}
