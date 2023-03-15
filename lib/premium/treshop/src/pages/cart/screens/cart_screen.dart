part of '../cart_page.dart';

class TreshopCartScreen extends StatefulWidget {
  const TreshopCartScreen({Key? key}) : super(key: key);
  @override
  State<TreshopCartScreen> createState() => _TreshopCartScreenState();
}

class _TreshopCartScreenState extends State<TreshopCartScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: AppLocalizations.of(context)!.cart,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(TreshopRoutes.search),
            icon: const Icon(FeatherIcons.search),
          ),
        ],
      ),
      body: (CartList.cartList.isNotEmpty)
          ? const _BuildBody()
          : IllustrationWidget(
              icon: CustomIcon.shoppingBag,
              title: AppLocalizations.of(context)!.shopping_bag_is_empty,
              subtitle: AppLocalizations.of(context)!
                  .looks_like_you_havent_added_any_item_to_your_cart_yet,
            ),
    );
  }
}
