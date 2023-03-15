part of '../home_page.dart';

class _BuildCategoryList extends StatelessWidget {
  const _BuildCategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Screens.width(context),
      height: 100,
      child: ListView.builder(
        itemCount: CategoryList.topCategoryList.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final data = CategoryList.topCategoryList[index];

          return _CategoryCard(category: data, onCategoryTap: () {});
        },
      ),
    );
  }
}
