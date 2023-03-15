part of '../home_page.dart';

class _BuildCategory extends StatelessWidget {
  final List<CategoryModel> itemCount;

  const _BuildCategory({Key? key, required this.itemCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount.length,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        // childAspectRatio: 9 / 11.5,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        final category = itemCount[index];
        return _CategoryCard(category: category);
      },
    );
  }
}
