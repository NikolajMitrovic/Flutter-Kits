part of '../search_page.dart';

class _ResultAllProductSection extends StatelessWidget {
  final List<ProductModel>? itemCount;

  const _ResultAllProductSection({Key? key, this.itemCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlignedGridView.count(
        crossAxisCount: 2,
        itemCount: itemCount!.length,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(18),
        itemBuilder: (BuildContext context, int index) {
          return _BuildProductGridCard(
            product: itemCount![index],
            onPressed: () {
              Get.toNamed<dynamic>(
                ShuppyRoutes.product,
                arguments: itemCount![index],
              );
            },
          );
        },
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
    );
  }
}
