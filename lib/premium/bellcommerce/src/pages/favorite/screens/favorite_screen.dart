part of '../favorite_page.dart';

class BellcommerceFavoriteScreen extends StatelessWidget {
  const BellcommerceFavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.favorites,
      ),
      body: ResponsiveGridList(
        desiredItemWidth: 100,
        minSpacing: Const.margin,
        children: productList.map((i) {
          return _ProductCard(product: i);
        }).toList(),
      ),
    );
  }
}
