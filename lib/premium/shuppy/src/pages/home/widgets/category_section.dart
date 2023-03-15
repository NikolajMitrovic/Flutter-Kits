part of '../home_page.dart';

class _CategorySection extends StatelessWidget {
  final List itemCount;

  const _CategorySection({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String label(String val) {
      switch (val) {
        case 'Dress':
          return AppLocalizations.of(context)!.dress;
        case 'Shoes':
          return AppLocalizations.of(context)!.shoes;
        case 'Bag':
          return AppLocalizations.of(context)!.bag;
        case 'Other':
          return AppLocalizations.of(context)!.other;

        default:
          return '';
      }
    }

    void onTap(int id) {
      switch (id) {
        case 1:
          Get.toNamed<dynamic>(
            ShuppyRoutes.browseProduct,
            arguments: BrowseProductArgument(
              label: AppLocalizations.of(context)!.all_dress,
              itemCount: LocalList.allProductList(),
            ),
          );
          break;
        case 2:
          Get.toNamed<dynamic>(
            ShuppyRoutes.browseProduct,
            arguments: BrowseProductArgument(
              label: AppLocalizations.of(context)!.all_shoes,
              itemCount: LocalList.allProductList(),
            ),
          );
          break;
        case 3:
          Get.toNamed<dynamic>(
            ShuppyRoutes.browseProduct,
            arguments: BrowseProductArgument(
              label: AppLocalizations.of(context)!.all_bag,
              itemCount: LocalList.allProductList(),
            ),
          );
          break;
        case 4:
        Get.toNamed<dynamic>(ShuppyRoutes.category);
        break;
        default:
          return;
      }
    }

    return Container(
      width: Screens.width(context),
      height: 90,
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: LocalList.topCategoryList()
            .map((e) => Expanded(
                  child: _BuildCategoryCircleCard(
                    onTap: () => onTap(e.id!),
                    icon: e.icon!,
                    label: label(e.label!),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
