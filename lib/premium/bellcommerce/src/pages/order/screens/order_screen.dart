part of '../order_page.dart';

class BellcommerceOrderScreen extends StatelessWidget {
  const BellcommerceOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.my_order,
      ),
      body: ListView.builder(
        itemCount: orderList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal:Const.margin,
          vertical: 20,
        ),
        itemBuilder: (context, index) {
          final order = orderList[index];
          return _OrderCard(order: order);
        },
      ),
    );
  }
}
