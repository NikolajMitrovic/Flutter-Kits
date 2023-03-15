part of '../home_page.dart';

class FurneyHomeScreen extends StatelessWidget {
  const FurneyHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        actions: [
          IconButton(
            icon: const Icon(FeatherIcons.bell),
            onPressed: () => Get.toNamed<dynamic>(FurneyRoutes.notification),
          )
        ],
      ),
      body: ListView(
        children: [
          _BuildSwiper(),
          const SizedBox(height: Const.space25),
          _BuildLabelSection(
            label: AppLocalizations.of(context)!.categories,
            onViewAllTap: () => Get.toNamed<dynamic>(FurneyRoutes.category),
          ),
          const SizedBox(height: Const.space12),
          const _BuildCategoryList(),
          const SizedBox(height: Const.space25),
          _BuildLabelSection(
            label: AppLocalizations.of(context)!.best_seller,
            onViewAllTap: () => Get.toNamed<dynamic>(
              FurneyRoutes.allProduct,
              arguments: AppLocalizations.of(context)!.best_seller,
            ),
          ),
          const SizedBox(height: Const.space12),
          _BuildScrollableList(
            itemCount: ProductList.bestSellerList,
          ),
          const SizedBox(height: Const.space25),
          _BuildLabelSection(
            label: AppLocalizations.of(context)!.other_products,
            onViewAllTap: () => Get.toNamed<dynamic>(
              FurneyRoutes.allProduct,
              arguments: AppLocalizations.of(context)!.other_products,
            ),
          ),
          const SizedBox(height: Const.space12),
          _BuildVerticalList(
            itemCount: ProductList.bestSellerList,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
