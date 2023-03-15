part of '../profile_page.dart';

class _RentHistoryTab extends StatelessWidget {
  const _RentHistoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rentHistoryList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space25,
      ),
      itemBuilder: (context, index) {
        final rent = rentHistoryList[index];
        return _RentHistoryCard(rent: rent);
      },
    );
  }
}
