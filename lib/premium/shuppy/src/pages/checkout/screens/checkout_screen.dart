part of '../checkout_page.dart';

class ShuppyCheckoutScreen extends StatefulWidget {
  const ShuppyCheckoutScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyCheckoutScreen> createState() => _ShuppyCheckoutScreenState();
}

class _ShuppyCheckoutScreenState extends State<ShuppyCheckoutScreen> {
  CheckoutArgument? _args;
  Random orderId = Random();
  List<ProductModel?> myCart = [];

  @override
  void initState() {
    super.initState();
    _args = Get.arguments as CheckoutArgument;
    myCart.addAll(_args!.products!);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.transaction_details,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomShakeTransition(
                    child: Text(
                      AppLocalizations.of(context)!.product_ordered,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
              const      SizedBox(height: Const.space8),
                  _BuildProductOrderList(args: _args),
               const     SizedBox(height: Const.space25),
                  CustomShakeTransition(
                    child: Text(
                      AppLocalizations.of(context)!.shipping_address,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                const    SizedBox(height: Const.space8),
                  _BuildDestinationAddress(),
                ],
              ),
            ),
            _BodySection(
              totalPrice: _args!.total!,
              shippingCost: _args!.shipping!,
              total: _args!.total! + _args!.shipping!,
              onCheckoutTap: () {
                Dialogs.labelDialog(
                  context,
                  title: AppLocalizations.of(context)!
                      .are_you_sure_you_want_to_checkout_now,
                  primaryButtonLabel: AppLocalizations.of(context)!.yes,
                  onPrimaryButtonTap: () {
                    LocalList.orderList.add(
                      OrderModel(
                        id: orderId.nextInt(1000),
                        address: '2517  Fort Street, Ocracoke, North Carolina',
                        shipping: _args!.shipping,
                        products: myCart,
                        totalOfAllProduct: _args!.total,
                        total: _args!.total! + _args!.shipping!,
                        createdAt: DateTime.now(),
                      ),
                    );
                    Get.back<dynamic>();
                    // ignore: cascade_invocations
                    Get.offNamed<dynamic>(ShuppyRoutes.checkoutSuccess);
                    LocalList.cartList.clear();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
