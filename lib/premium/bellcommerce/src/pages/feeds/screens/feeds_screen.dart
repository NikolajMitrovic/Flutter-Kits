part of '../feeds_page.dart';

class BellcommerceFeedScreen extends StatelessWidget {
  const BellcommerceFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.offers,
      ),
      body: ListView.builder(
        itemCount: feedList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space15,
        ),
        itemBuilder: (context, index) {
          final feed = feedList[index];
          return _FeedCard(feed: feed);
        },
      ),
    );
  }
}
