part of '../browse_category_page.dart';

class BellcommerceBrowseCategoryScreen extends StatelessWidget {
  const BellcommerceBrowseCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.categories,
      ),
      body: ListView(
        children: [
          ResponsiveGridList(
            desiredItemWidth: 100,
            minSpacing: 10,
            scroll: false,
            children: categoryList(context).map((i) {
              return _CategoryCircleCard(category: i);
            }).toList(),
          ),
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Text(
              AppLocalizations.of(context)!.other_products,
              style: theme.textTheme.displaySmall,
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: Const.space12),
          ResponsiveGridList(
            desiredItemWidth: 100,
            minSpacing: Const.margin,
            scroll: false,
            children: productList.map((i) {
              return _ProductCard(product: i);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
