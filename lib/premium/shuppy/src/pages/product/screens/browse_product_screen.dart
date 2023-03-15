part of '../product_page.dart';

class ShuppyBrowseProductScreen extends StatelessWidget {
  const ShuppyBrowseProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as BrowseProductArgument;

    return Scaffold(
      appBar: CustomAppBar(context, title: args.label, actions: [
        IconButton(
          icon: const  Icon(FeatherIcons.search),
          color: ColorLight.fontTitle,
          tooltip: AppLocalizations.of(context)!.search,
          onPressed: () {
            showSearch<dynamic>(context: context, delegate: ShuppySearchScreen());
          },
        ),
      ]),
      body:  AlignedGridView.count(
        itemCount: args.itemCount.length,
        crossAxisCount: 2, 
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        shrinkWrap: true,
        physics:  const ScrollPhysics(),
        padding:  const EdgeInsets.symmetric(horizontal: 18),
        itemBuilder: (context, index) {
          final product = args.itemCount[index];
          return _BuildProductGridCard(
            product: product,
            onPressed: () {
              Get.toNamed<dynamic>(ShuppyRoutes.product, arguments: product);
            },
          );
        },
      ),
    );
  }
}
