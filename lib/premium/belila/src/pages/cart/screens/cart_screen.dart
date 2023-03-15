part of '../cart_page.dart';

class BelilaCartScreen extends StatefulWidget {
  const BelilaCartScreen({Key? key}) : super(key: key);
  @override
  State<BelilaCartScreen> createState() => _BelilaCartScreenState();
}

class _BelilaCartScreenState extends State<BelilaCartScreen> {
  TextEditingController? _promoCodeController;
  final int _total = 0;
  final bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _promoCodeController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor : theme.backgroundColor ,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: Get.back,
          color: theme.primaryColor,
        ),
        title: Text(AppLocalizations.of(context)!.cart,
            style: theme.textTheme.displaySmall),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 200,
            child: RefreshIndicator(
              onRefresh: () async {},
              child: ListView.builder(
                itemCount: cartList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, indexCart) {
                  final cart = cartList[indexCart];
                  return ShakeTransition(
                    duration: Duration(milliseconds: (indexCart * 100) + 500),
                    child: CartCard(
                        isFirst: indexCart == 0,
                        isLast: indexCart == 1,
                        product: cart.product,
                        cart: cart,
                        qty: cart.product?.amount,
                        onChecked: () {
                          //Check
                        },
                        onDelete: () {},
                        onTapQuantityAdd: () {},
                        onTapQuantityRemove: () {}),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: theme.cardColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Const.margin,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _promoCodeController,
                            decoration: InputDecoration(
                              hintText: AppLocalizations.of(context)!
                                  .enter_the_promo_code,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: theme.disabledColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Const.margin,
                      vertical: 25,
                    ),
                    child: Row(
                      children: [
                        Text(AppLocalizations.of(context)!.sub_total,
                            style: theme.textTheme.headlineMedium),
                        Expanded(
                          child: Text(
                            ':',
                            style: theme.textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          NumberFormat.currency(
                            symbol: 'Rp. ',
                            locale: 'id-ID',
                            decimalDigits: 0,
                          ).format(_total),
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Const.margin,
                    ),
                    child: CustomElevatedButton(
                      onTap: () {
                        Get.toNamed<dynamic>(BelilaRoutes.checkout);
                      },
                      label: AppLocalizations.of(context)!.checkout_now,
                      isLoading: _isLoading,
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
