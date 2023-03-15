part of '../product_page.dart';

class FurneyAllProductScreen extends StatefulWidget {
  const FurneyAllProductScreen({Key? key}) : super(key: key);
  @override
  State<FurneyAllProductScreen> createState() => _FurneyAllProductScreenState();
}

class _FurneyAllProductScreenState extends State<FurneyAllProductScreen> {
  String _title = '';

  @override
  void initState() {
    super.initState();
    _title = Get.arguments as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: _title,
      ),
      body:  AlignedGridView.count(
        itemCount: ProductList.bestSellerList.length,
        crossAxisCount: 2, 
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        itemBuilder: (context, index) {
          final product = ProductList.bestSellerList[index];
          return ProductCard(
            product: product,
            cardType: ProductCardType.grid,
          );
        },
      ),
    );
  }
}
