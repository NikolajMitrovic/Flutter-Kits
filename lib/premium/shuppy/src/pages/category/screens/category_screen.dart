part of '../category_page.dart';

class ShuppyCategoryScreen extends StatelessWidget {
  const ShuppyCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context,
          title: AppLocalizations.of(context)!.categories),
      body: GridView.builder(
        itemCount: LocalList.allCategoryList().length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        shrinkWrap: true,
        physics:const ScrollPhysics(),
        padding:const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final data = LocalList.allCategoryList()[index];
          return _BuildCategoryCircleCard(
            label: data.label!,
            icon: data.icon!,
            onTap: () {
              Get.toNamed<dynamic>(
                ShuppyRoutes.browseProduct,
                arguments: BrowseProductArgument(
                  itemCount: LocalList.allProductList(),
                  label: data.label!,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
