part of '../cart_page.dart';

class _BuildBody extends StatefulWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  State<_BuildBody> createState() => __BuildBodyState();
}

class __BuildBodyState extends State<_BuildBody> {
  var _total = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: use_late_for_private_fields_and_variables
    final priceList = CartList.cartList.map((cart) => cart.price);
    _total = priceList.fold<int>(0, (p, c) => p + c!);
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: CartList.cartList.length,
            separatorBuilder: (context, index) {
              return Divider(color: theme.hintColor);
            },
            itemBuilder: (context, index) {
              final cart = CartList.cartList[index];
              return CartCard(
                cart: cart,
                onRemoveTap: () {
                  showToast(msg: AppLocalizations.of(context)!.product_removed);
                  CartList.cartList.removeAt(index);
                  setState(() {});
                },
              );
            },
          ),
        ),
        _FooterSection(
          total: _total.toInt(),
          onCheckoutTap: () {
            Get.toNamed<dynamic>(
              TreshopRoutes.checkout,
              arguments: CheckoutModel(
                  products: CartList.cartList,
                  // couponId: provider.selectedCoupon,
                  couponId: 2
                  // total: _total,
                  ),
            );
          },
        )
      ],
    );
  }
}
