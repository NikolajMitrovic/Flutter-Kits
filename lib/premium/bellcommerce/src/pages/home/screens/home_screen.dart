part of '../home_page.dart';

class BellcommerceHomeScreen extends StatelessWidget {
  const BellcommerceHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        actions: [
          IconButton(
            color: theme.primaryColor,
            icon: const Icon(FeatherIcons.search),
            onPressed: () => Get.toNamed<dynamic>(BellcommerceRoutes.search),
          ),
          IconButton(
            color: theme.primaryColor,
            icon: const Icon(FeatherIcons.bell),
            onPressed: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.notification,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const _BuildSwiper(),
          const SizedBox(height: Const.space25),
          _BuildCategoryList(
            label: AppLocalizations.of(context)!.categories,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.browseCategory,
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildProductList(
            label: AppLocalizations.of(context)!.top_of_the_week,
            productList: productList,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.browseProduct,
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildProductList(
            label: AppLocalizations.of(context)!.popular,
            productList: productList,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.browseProduct,
            ),
          ),
          const SizedBox(height: Const.space25),
          _BuildProductList(
            label: AppLocalizations.of(context)!.best_seller,
            productList: productList,
            onSeeAllTap: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.browseProduct,
            ),
          ),
        ],
      ),
    );
  }
}
