part of '../order_page.dart';

class TreshopOrderScreen extends StatelessWidget {
  const TreshopOrderScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await Get.offAllNamed<dynamic>(TreshopRoutes.profile);
        return true;
      },
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          leadingOntap: () => Get.offAllNamed<dynamic>(TreshopRoutes.profile),
          title: AppLocalizations.of(context)!.my_orders,
          actions: [
            IconButton(
              onPressed: () => Get.toNamed<dynamic>(TreshopRoutes.search),
              icon: const Icon(FeatherIcons.search),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: OrderList.orderList.length,
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          itemBuilder: (context, index) {
            final order = OrderList.orderList[index];

            return OrderCard(order: order);
          },
        ),
      ),
    );
  }
}
