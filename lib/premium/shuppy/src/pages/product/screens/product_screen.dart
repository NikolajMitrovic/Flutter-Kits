part of '../product_page.dart';

class ShuppyProductScreen extends StatefulWidget {
  const ShuppyProductScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyProductScreen> createState() => _ShuppyProductScreenState();
}

class _ShuppyProductScreenState extends State<ShuppyProductScreen> {
  bool _isLiked = false;
  ProductModel? product;

  int _addToCartCounter = 0;
  int _imageIndex = 0;

  @override
  void initState() {
    super.initState();
    product = Get.arguments as ProductModel;
    final favorite = LocalList.favoriteList
        .singleWhere((e) => e.id == product!.id, orElse: () => FavoriteModel());
    _isLiked = favorite.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey[100],
      body: SafeArea(
        child: Stack(
          children: [
            _HeaderSection(
              product: product!,
              imageIndex: _imageIndex,
              onIndexChanged: (v) {
                setState(() => _imageIndex = v);
              },
              onImageViewTap: () {
                // Get.to(
                //   MyPhotoView(
                //     id: product!.id.toString(),
                //     image: images,
                //   ),
                //   transition: Transition.topLevel,
                //   duration: Duration(milliseconds: 500),
                // );
              },
            ),
            _BodySection(
              product: product!,
            ),
            const _BuildBackNavigationButton(),
            _BuildFloatingActionButton(
              isLiked: _isLiked,
              product: product,
              addToCartCounter: _addToCartCounter,
              onFavoriteTap: () {
                if (_isLiked == true) {
                  setState(() {
                    LocalList.favoriteList
                        .removeWhere((e) => e.id == product!.id);
                    _isLiked = false;
                  });
                } else {
                  setState(() {
                    LocalList.favoriteList.add(
                      FavoriteModel(
                        id: product!.id,
                        product: product,
                        isLiked: true,
                      ),
                    );
                    _isLiked = true;
                    showSnackbar(
                      context,
                      title: AppLocalizations.of(context)!.success,
                      subtitle: AppLocalizations.of(context)!
                          .successfully_added_to_favorites,
                    );
                  });
                }
              },
              onCartTap: () {
                setState(() {
                  _addToCartCounter++;
                });
                if (_addToCartCounter == 1) {
                  LocalList.cartList.add(product!);
                  showSnackbar(
                    context,
                    title: AppLocalizations.of(context)!.success,
                    subtitle: AppLocalizations.of(context)!
                        .successfully_added_to_cart,
                  );
                } else {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
