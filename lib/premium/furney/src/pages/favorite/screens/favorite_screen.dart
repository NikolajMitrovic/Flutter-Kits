part of '../favorite_page.dart';

class FurneyFavoriteScreen extends StatelessWidget {
  const FurneyFavoriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.my_favorite,
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
