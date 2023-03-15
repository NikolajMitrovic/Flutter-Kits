part of '../favorite_page.dart';

class BelilaFavoriteScreen extends StatefulWidget {
  const BelilaFavoriteScreen({Key? key}) : super(key: key);

  @override
  State<BelilaFavoriteScreen> createState() => _BelilaFavoriteScreenState();
}

class _BelilaFavoriteScreenState extends State<BelilaFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.favorite,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
        },
        child: AlignedGridView.count(
          crossAxisCount: 2,
          itemCount: popularProductList.length,
          physics: const ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          itemBuilder: (BuildContext context, int index) {
            return _ProductCard(
              product: popularProductList[index],
            );
          }, 
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
      ),
    );
  }
}
