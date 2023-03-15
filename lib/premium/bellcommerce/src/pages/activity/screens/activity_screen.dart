part of '../activity_page.dart';

class BellcommerceActivityScreen extends StatelessWidget {
  const BellcommerceActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.offers,
      ),
      body: ListView.builder(
        itemCount: activityList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space15,
        ),
        itemBuilder: (context, index) {
          final activity = activityList[index];
          return _ActivityCard(activity: activity);
        },
      ),
    );
  }
}
