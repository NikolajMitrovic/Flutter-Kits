part of '../notification_page.dart';

class BelilaNotificationScreen extends StatefulWidget {
  const BelilaNotificationScreen({Key? key}) : super(key: key);
  @override
  State<BelilaNotificationScreen> createState() => _BelilaNotificationScreenState();
}

class _BelilaNotificationScreenState extends State<BelilaNotificationScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return RefreshIndicator(
      onRefresh: () async {},
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.notification,
          enableLeading: false,
        ),
        body: ListView.separated(
          itemCount: notificationList.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            final data = notificationList[index];
            return NotificationCard(notification: data);
          },
        ),
      ),
    );
  }

  bool alive = true;
  @override
  bool get wantKeepAlive => alive;
}
