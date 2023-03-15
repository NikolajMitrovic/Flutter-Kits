part of '../order_page.dart';

class ShuppyOrderHistoryScreen extends StatelessWidget {
  const ShuppyOrderHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final args = Get.arguments as bool;

    return WillPopScope(
      onWillPop: () async {
        if (args == true) {
          await Get.offAllNamed<dynamic>(ShuppyRoutes.profile);
        } else {
          Get.back<dynamic>();
        }
        return false;
      },
      child: Scaffold(
        appBar: CustomAppBar(context,
            title: AppLocalizations.of(context)!.order_history,
            leadingOntap: () {
          if (args == true) {
            Get.offAllNamed<dynamic>(ShuppyRoutes.profile);
          } else {
            Get.back<dynamic>();
          }
        }),
        body: LocalList.orderList.isNotEmpty
            ? ListView.separated(
                itemCount: LocalList.orderList.length,
                
                shrinkWrap: true,
                padding:const  EdgeInsets.symmetric(horizontal: Const.margin),
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemBuilder: (context, index) {
                  final order = LocalList.orderList[index];
                  String status(OrderStatus val) {
                    switch (order.orderStatus) {
                      case OrderStatus.pending:
                        return 'Pending';
                      case OrderStatus.process:
                        return 'Process';
                      case OrderStatus.onDelivery:
                        return 'On Delivery';
                      case OrderStatus.done:
                        return 'Done';
                      default:
                        return 'Cancelled';
                    }
                  }

                  Color statusColor(OrderStatus val) {
                    switch (order.orderStatus) {
                      case OrderStatus.pending:
                        return const Color(0xFFF29339);
                      case OrderStatus.process:
                        return const Color(0xFF9ACD32);
                      case OrderStatus.onDelivery:
                        return const Color(0xFF9ACD32);
                      case OrderStatus.done:
                        return const Color(0xFF9ACD32);
                      default:
                        return const Color(0xFF9ACD32);
                    }
                  }

                  return ExpansionTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Id: ${order.id}',
                            style: theme.textTheme.headlineMedium),
                        Text(status(order.orderStatus),
                            style: theme.textTheme.titleSmall!.copyWith(
                              color: statusColor(order.orderStatus),
                            )),
                      ],
                    ),
                    children: order.products!
                        .map((e) => InkWell(
                              onTap: () {
                                Get.toNamed<dynamic>(
                                  ShuppyRoutes.orderDetail,
                                  arguments: order,
                                );
                              },
                              child: _BuildProductOrderCard(product: e),
                            ))
                        .toList(),
                  );
                },
              )
            : EmptySection(
                title:
                    AppLocalizations.of(context)!.your_order_history_is_empty,
                image: Illustrations.emptyOrder,
              ),
      ),
    );
  }
}
