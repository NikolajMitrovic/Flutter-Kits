part of '../order_page.dart';

class FurneyOrderScreen extends StatelessWidget {
  const FurneyOrderScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String orderStatus(OrderStatus status) {
      switch (status) {
        case OrderStatus.pending:
          return AppLocalizations.of(context)!.pending;
        case OrderStatus.onDelivery:
          return AppLocalizations.of(context)!.on_delivery;
        case OrderStatus.complete:
          return AppLocalizations.of(context)!.complete;
        default:
          return AppLocalizations.of(context)!.pending;
      }
    }

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.my_order,
      ),
      body: ListView.builder(
        itemCount: OrderList.orderList.length,
        itemBuilder: (context, index) {
          final data = OrderList.orderList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: Const.space15),
            child: Container(
              width: Screens.width(context),
              margin: const EdgeInsets.symmetric(horizontal: Const.margin),
              padding: const EdgeInsets.all(Const.space15),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(Const.radius),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                            data.product!.images!.first),
                      ),
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          data.product!.name!,
                          style: theme.textTheme.displaySmall,
                        ),
                        const SizedBox(height: Const.space12),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  // ignore: lines_longer_than_80_chars
                                  text: '${AppLocalizations.of(context)!.status}:  ',
                                  style: theme.textTheme.titleMedium),
                              TextSpan(
                                  text: orderStatus(data.orderStatus),
                                  style: theme.textTheme.titleMedium),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                NumberFormat.currency(symbol: r'$')
                                    .format(data.product!.price),
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon:const Icon(Icons.edit),
                                  iconSize: 20,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon:const Icon(Icons.share),
                                  iconSize: 20,
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
