part of '../review_page.dart';

class BellcommerceReviewScreen extends StatelessWidget {
  const BellcommerceReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: CustomAppBar(
          context,
        ),
        body: Column(
          children: [
            const _BuildTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  _BuildBody(itemList: reviewList),
                  _BuildBody(itemList: reviewList),
                  _BuildBody(itemList: reviewList),
                  _BuildBody(itemList: reviewList),
                  _BuildBody(itemList: reviewList),
                  _BuildBody(itemList: reviewList),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

