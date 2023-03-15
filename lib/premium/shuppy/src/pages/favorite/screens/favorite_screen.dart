part of '../favorite_page.dart';

class ShuppyFavoriteScreen extends StatefulWidget {
  const ShuppyFavoriteScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyFavoriteScreen> createState() => _ShuppyFavoriteScreenState();
}

class _ShuppyFavoriteScreenState extends State<ShuppyFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.favorite,
      ),
      body: (LocalList.favoriteList.isNotEmpty)
          ?  AlignedGridView.count(
              itemCount: LocalList.favoriteList.length,
              crossAxisCount: 2, 
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              itemBuilder: (context, index) {
                final product = LocalList.favoriteList[index];
                return _BuildProductGridCard(
                  product: product.product,
                  onPressed: () {
                    Get.toNamed<dynamic>(ShuppyRoutes.product, arguments: product.product);
                  },
                );
              },
            )
          : EmptySection(
              image: Illustrations.favoriteIllustration,
              title: AppLocalizations.of(context)!
                  .your_favorite_list_is_empty_lets_find_interesting_products_and_add_them_to_favorites,
            ),
    );
  }
}
