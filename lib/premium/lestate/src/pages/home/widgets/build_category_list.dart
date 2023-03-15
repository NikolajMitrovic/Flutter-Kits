part of '../home_page.dart';

class _BuildCategoryList extends StatelessWidget {
  const _BuildCategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        itemCount: categoryList(context).length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final category = categoryList(context)[index];
          return Container(
            width: 100,
            margin: const EdgeInsets.only(right: Const.space15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Const.radius),
              color: Const.accentColor.withOpacity(.1),
            ),
            child: InkWell(
              onTap: () => Get.toNamed<dynamic>(
                LestateRoutes.browseEstate,
                arguments: '',
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    category.icon ?? '',
                    width: 40,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                    category.name ?? '',
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
