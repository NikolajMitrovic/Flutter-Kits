part of '../order_page.dart';

class _BuildBody extends StatelessWidget {
  final List<OrderModel> itemList;

  const _BuildBody({
    Key? key,
    required this.itemList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: (itemList.isEmpty)
          ? CustomEmptyIllustration(
              onRefresh: () async {},
              image: Illustrations.activity,
              description:
                  AppLocalizations.of(context)!.empty_orders_lets_shop_now,
            )
          : ListView.builder(
              itemCount: itemList.length,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: const EdgeInsets.all(Const.margin),
              itemBuilder: (context, index) {
                return _OrderCard(
                  order: itemList[index],
                  onBuyAgainTap: (){},
                );
              },
            ),
    );
  }
}
