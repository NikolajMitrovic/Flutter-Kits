part of '../all_product_page.dart';

class TreshopAllProductScreen extends StatefulWidget {
  const TreshopAllProductScreen({Key? key}) : super(key: key);
  @override
  State<TreshopAllProductScreen> createState() => _TreshopAllProductScreenState();
}

class _TreshopAllProductScreenState extends State<TreshopAllProductScreen> {
  String _title = '';
  bool _isLowerPrice = false;
  List<ProductModel> productList = ProductList.allProduct;
  Comparator<ProductModel>? priceComparator;

  @override
  void initState() {
    super.initState();
    _title = Get.arguments as String;
  }

  Future _priceSort(bool? val) async {
    switch (val) {
      case true:
        // ignore: omit_local_variable_types
        priceComparator = (a, b) => a.price!.compareTo(b.price!.toInt());
        ProductList.flashSaleProductList.sort(priceComparator);
        break;
      case false:
        // ignore: omit_local_variable_types
        priceComparator = (a, b) => b.price!.compareTo(a.price!.toInt());
        ProductList.flashSaleProductList.sort(priceComparator);
        break;
      default:
        // ignore: omit_local_variable_types
        priceComparator = (a, b) => a.price!.compareTo(b.price!.toInt());
        ProductList.flashSaleProductList.sort(priceComparator);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: _title,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(TreshopRoutes.search),
            icon: const Icon(FeatherIcons.search),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: Screens.width(context),
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  _title,
                  style: theme.textTheme.displayLarge!.copyWith(fontSize: 30),
                ),
                const SizedBox(height: Const.space15),
                Row(
                  children: [
                    _BuildFilterButton(
                      icon: (_isLowerPrice == true)
                          ? FeatherIcons.arrowDown
                          : FeatherIcons.arrowUp,
                      label: AppLocalizations.of(context)!.sort_by,
                      onTap: () {
                        setState(() {
                          _priceSort(_isLowerPrice = !_isLowerPrice);
                        });
                      },
                      isSort: true,
                    ),
                    const SizedBox(width: 2),
                    _BuildFilterButton(
                      icon: FeatherIcons.filter,
                      label: AppLocalizations.of(context)!.filter,
                      onTap: () {
                        showFlexibleBottomSheet<dynamic>(
                          minHeight: 0,
                          initHeight: 0.5,
                          maxHeight: 1,
                          context: context,
                          builder: (
                            context,
                            scrollController1,
                            bottomSheetOffset,
                          ) {
                            return TreshopFilterScreen(
                              scrollController: scrollController1,
                            );
                          },
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ResponsiveGridList(
              desiredItemWidth: 150,
              minSpacing: Const.margin,
              children: ProductList.flashSaleProductList.map((e) {
                final product = e;
                return ProductCard(product: product);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
