part of '../inbox_page.dart';

class BelilaInboxScreen extends StatefulWidget {
  const BelilaInboxScreen({Key? key}) : super(key: key);
  @override
  State<BelilaInboxScreen> createState() => _BelilaInboxScreenState();
}

class _BelilaInboxScreenState extends State<BelilaInboxScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: AppLocalizations.of(context)!.chat,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(BelilaRoutes.archivedInbox),
            icon: const Icon(Icons.archive_outlined),
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: ListView.separated(
          itemCount: inboxList.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            final data = inboxList[index];

            return _ChatCard(data: data);
          },
        ),
      ),
    );
  }

  bool alive = true;
  @override
  bool get wantKeepAlive => alive;
}
