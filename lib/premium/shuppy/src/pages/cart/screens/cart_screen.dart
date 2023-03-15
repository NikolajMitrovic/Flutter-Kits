part of '../cart_page.dart';

class ShuppyCartScreen extends StatefulWidget {
  const ShuppyCartScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyCartScreen> createState() => _ShuppyCartScreenState();
}

class _ShuppyCartScreenState extends State<ShuppyCartScreen> {
  int? _total = 0;
  final int _shipping = 5;

  @override
  Widget build(BuildContext context) {
    /// Sum per product
    LocalList.cartList
        .map((e) {
          return e.price! * e.quantity;
        })
        .toList()
        .fold<int>(0, (int p, c) => _total = p + c);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: AppLocalizations.of(context)!.shopping_cart,
      ),
      body: (LocalList.cartList.isNotEmpty)
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: LocalList.cartList.length,
                      itemBuilder: (context, index) {
                        final product = LocalList.cartList[index];
                        return _BuildCartCard(
                          product: product,
                          onPressedAdd: () {
                            setState(() => product.quantity =
                                max(1, product.quantity + 1));
                          },
                          onPressedRemove: () {
                            if (product.quantity != 1) {
                              setState(() {
                                product.quantity =
                                    min(50, product.quantity - 1);
                              });
                            }
                          },
                          onPressedDelete: () {
                            setState(() {
                              LocalList.cartList.removeAt(index);
                            });
                            showSnackbar(
                              context,
                              position: SnackPosition.TOP,
                              title: AppLocalizations.of(context)!.success,
                              subtitle: AppLocalizations.of(context)!
                                  .product_is_removed,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  _BodySection(
                    totalPrice: _total!,
                    shippingCost: _shipping,
                    total: _total! + _shipping,
                    onCheckoutTap: () {
                      Get.toNamed<dynamic>(
                        ShuppyRoutes.checkout,
                        arguments: CheckoutArgument(
                          total: _total,
                          shipping: _shipping,
                          products: LocalList.cartList,
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          : EmptySection(
              image: Illustrations.emptyCart,
              title: AppLocalizations.of(context)!.shopping_cart_is_empty,
            ),
    );
  }
}
