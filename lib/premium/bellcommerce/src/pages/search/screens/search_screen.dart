part of '../search_page.dart';

class BellcommerceSearchScreen extends StatefulWidget {
  const BellcommerceSearchScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceSearchScreen> createState() =>
      _BellcommerceSearchScreenState();
}

class _BellcommerceSearchScreenState extends State<BellcommerceSearchScreen> {
  late TextEditingController _searchController;
  late List<ProductModel> _productList = productList;
  int _selectedSort = 0;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  final List<String> _sortProduct = [
    'Related',
    'Best Seller',
    'Newest',
    'Price',
  ];

  void searchProduct(String query) {
    final product = productList.where((product) {
      final titleLower = product.title?.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower!.contains(searchLower);
    }).toList();

    setState(() {
      _productList = product;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText:
                        AppLocalizations.of(context)!.search_anything_you_like,
                    controller: _searchController,
                    onChanged: searchProduct,
                  ),
                ),
                const SizedBox(width: Const.space12),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: BorderRadius.circular(Const.radius)),
                  child: const Icon(
                    FeatherIcons.search,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _sortProduct
                    .asMap()
                    .entries
                    .map(
                      (e) => CustomTextButton(
                        label: e.value,
                        onTap: () {
                          setState(() {
                            _selectedSort = e.key;
                          });
                        },
                        textColor: (_selectedSort == e.key)
                            ? theme.primaryColor
                            : theme.disabledColor,
                      ),
                    )
                    .toList()),
          ),
          Expanded(
            child: ResponsiveGridList(
              desiredItemWidth: 100,
              minSpacing: Const.margin,
              children: _productList.map((i) {
                return _ProductCard(product: i);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
