part of '../home_page.dart';

class _BuildScrollableList extends StatelessWidget {
  final List<ProductModel>? itemCount;

  const _BuildScrollableList({Key? key, this.itemCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Screens.width(context),
      height: 220,
      child: ListView.builder(
        itemCount: itemCount?.length,
        padding: const EdgeInsets.only(left: Const.margin),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = itemCount![index];
          return ProductCard(product: data);
        },
      ),
    );
  }
}
