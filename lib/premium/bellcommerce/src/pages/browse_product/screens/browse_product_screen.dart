part of '../browse_product_page.dart';

class BellcommerceBrowseProductScreen extends StatefulWidget {
  const BellcommerceBrowseProductScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceBrowseProductScreen> createState() =>
      _BellcommerceBrowseProductScreenState();
}

class _BellcommerceBrowseProductScreenState
    extends State<BellcommerceBrowseProductScreen> {
  int _selectedSort = 0;

  final List<String> _sortProduct = [
    'Related',
    'Best Seller',
    'Newest',
    'Price',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(BellcommerceRoutes.search),
            color: theme.primaryColor,
            icon: const Icon(FeatherIcons.search),
          )
        ],
      ),
      body: Column(
        children: [
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
                    .toList()
                ),
          ),
          Expanded(
            child:  AlignedGridView.count(
              itemCount: productList.length,
              crossAxisCount: 2, 
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              itemBuilder: (context, index) {
                final product = productList[index];
                return _ProductCard(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
