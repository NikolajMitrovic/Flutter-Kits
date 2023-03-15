part of '../archived_inbox_page.dart';

class BelilaArchivedInboxScreen extends StatefulWidget {
  const BelilaArchivedInboxScreen({Key? key}) : super(key: key);
  @override
  State<BelilaArchivedInboxScreen> createState() => _BelilaArchivedInboxScreenState();
}

class _BelilaArchivedInboxScreenState extends State<BelilaArchivedInboxScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.chat_archive,
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
