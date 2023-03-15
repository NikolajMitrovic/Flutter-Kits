part of '../product_page.dart';

class BelilaProductScreen extends StatefulWidget {
  const BelilaProductScreen({Key? key}) : super(key: key);

  @override
  State<BelilaProductScreen> createState() => _BelilaProductScreenState();
}

class _BelilaProductScreenState extends State<BelilaProductScreen>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  bool _isLiked = false;
  int currentStock = 1;
  late final ProductDetailModel _product = productDetailModelList(context)[0];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          _alive = false;
          updateKeepAlive();
        },
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  _HeaderSection(
                    product: _product,
                  ),
                  _BodySection(
                    isLiked: _isLiked,
                    tabController: _tabController,
                    product: _product,
                    shippingCost: productShippingCostList,
                    onFavoriteTap: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                  ),
                ],
              ),
            ),
          const _BuildFooter(),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: (_provider.isLoading == true &&
      //         _provider.productDetail == null)
      //     ? const SizedBox()
      //     : Padding(
      //         padding: const EdgeInsets.fromLTRB(
      //           Const.margin,
      //           0.0,
      //           Const.margin,
      //           Const.margin,
      //         ),
      //         child: Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Expanded(
      //               child: CustomElevatedButton(
      //                 isLoading:
      //                     (context.watch<ConversationProvider>().isLoading ==
      //                             true)
      //                         ? true
      //                         : false,
      //                 color: theme.cardColor,
      //                 labelColor: themeProv.isDarkTheme
      //                     ? ColorDark.fontTitle
      //                     : ColorLight.fontTitle,
      //                 onTap: () {
      //                   Provider.of<ConversationProvider>(context,
      //                           listen: false)
      //                       .chatWithSeller(
      //                     context,
      //                     _productId.toString(),
      //                   );
      //                 },
      //                 label: AppLocalizations.of(context)!.contact_the_seller,
      //               ),
      //             ),
      //             const SizedBox(width: Const.margin),
      //             Expanded(
      //               child: Consumer<CartProvider>(builder: (context, prov, _) {
      //                 return CustomElevatedButton(
      //                   onTap: () {
      //                     if (currentStock > _provider.productDetail!.stock!) {
      //                       showToast(
      //                         msg: AppLocalizations.of(context)!.out_of_stock,
      //                       );
      //                     } else {
      //                       setState(() {
      //                         currentStock++;
      //                       });
      //                       context.read<CartProvider>().addToCart(
      //                           context, _provider.productDetail!.id);
      //                     }
      //                   },
      //                   label: AppLocalizations.of(context)!.add_to_cart,
      //                   isLoading: (prov.loading == true) ? true : false,
      //                 );
      //               }),
      //             ),
      //           ],
      //         ),
      //       ),
    );
  }

  bool _alive = true;
  @override
  bool get wantKeepAlive => _alive;
}
