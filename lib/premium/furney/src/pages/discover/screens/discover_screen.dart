part of '../discover_page.dart';

class FurneyDiscoverScreen extends StatefulWidget { 
  const FurneyDiscoverScreen({Key? key}) : super(key: key);
  @override
  State<FurneyDiscoverScreen> createState() => _FurneyDiscoverScreenState();
}

class _FurneyDiscoverScreenState extends State<FurneyDiscoverScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: AppLocalizations.of(context)!.discover,
        actions: [
          IconButton(
            icon:const Icon(FeatherIcons.filter),
            onPressed: () {
              _showFilterModalDialog(context);
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(
            Screens.width(context),
            50,
          ),
          child: Container(
            width: Screens.width(context),
            height: 50,
            padding:const EdgeInsets.only(left: Const.margin),
            child: ListView.builder(
              itemCount: FilterList.filterList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final data = FilterList.filterList[index];
                return FilterChip(
                  selectedIndex: _selectedIndex,
                  index: index,
                  filter: data,
                  onFilterTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
        ),
      ),
      body:  AlignedGridView.count(
        itemCount: ProductList.bestSellerList.length,
        crossAxisCount: 2, 
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        physics:const ScrollPhysics(),
        padding:const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        itemBuilder: (context, index) {
          final product = ProductList.bestSellerList[index];
          return ProductCard(
            product: product,
            cardType: ProductCardType.grid,
          );
        },
      ),
    );
  }

  void _showFilterModalDialog(BuildContext context) {
    showModalBottomSheet<dynamic>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      builder: (context) {
        return _FilterDialog();
      },
    );
  }
}
