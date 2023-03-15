part of '../order_page.dart';

class _BuildProductOrderList extends StatelessWidget {
  final List<ProductModel?> itemCount;

  const _BuildProductOrderList({Key? key,required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        final products = itemCount[index];
        return CustomShakeTransition(
          duration: const Duration(milliseconds: 1000),
          child: _BuildProductOrderCard(product: products),
        );
      },
    );
  }
}
