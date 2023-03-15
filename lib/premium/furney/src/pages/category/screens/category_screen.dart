part of '../category_page.dart';

class FurneyCategoryScreen extends StatelessWidget {
  const FurneyCategoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.categories,
      ),
      body: ListView.builder(
        itemCount: CategoryList.categoryList.length,
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final data = CategoryList.categoryList[index];

          return CategoryCard(
            category: data,
            onCategoryTap: () => Get.toNamed<dynamic>(
              FurneyRoutes.allProduct,
              arguments: data.name,
            ),
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    this.onCategoryTap,
  }) : super(key: key);

  final CategoryModel category;
  final VoidCallback? onCategoryTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: Const.space15),
      child: InkWell(
        onTap: onCategoryTap,
        borderRadius: BorderRadius.circular(Const.radius),
        child: Container(
          height: Screens.width(context) / 3.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            color: theme.cardColor,
          ),
          padding: const EdgeInsets.all(Const.space12),
          child: Row(
            children: [
              CustomNetworkImage(
                image: category.image!,
                width: Screens.width(context) / 4.5,
                height: Screens.width(context) / 4.5,
              ),
              const SizedBox(width: Const.space12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      category.name!,
                      style: theme.textTheme.headlineMedium,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 5),
                    AutoSizeText(
             '${category.totalItem} ${AppLocalizations.of(context)!.items}',
                      style: theme.textTheme.titleSmall,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            const  SizedBox(width: Const.space12),
              Icon(
                FeatherIcons.chevronRight,
                color: theme.highlightColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
