part of '../review_page.dart';

class _BuildBody extends StatelessWidget {
  final List<ReviewModel> itemList;

  const _BuildBody({
    Key? key,
    required this.itemList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.all( Const.margin),
      itemBuilder: (context, index) {
        final review = itemList[index];
        return _ReviewCard(review: review);
      },
    );
  }
}
