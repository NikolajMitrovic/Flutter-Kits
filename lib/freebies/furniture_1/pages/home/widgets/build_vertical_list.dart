part of '../home_page.dart';

class _BuildVerticalList extends StatelessWidget {
  final List<ProductModel>? itemCount;

  const _BuildVerticalList({Key? key, this.itemCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount?.length,
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final data = itemCount![index];
        return ProductCard(
          product: data,
          cardType: ProductCardType.vertical,
        );
      },
    );
  }
}
