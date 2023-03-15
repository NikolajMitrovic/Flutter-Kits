part of '../home_page.dart';

class _CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const _CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: category.onTap,
      borderRadius: BorderRadius.circular(Const.radius),
      child: Container(
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(Const.radius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: Const.space8),
            SvgPicture.asset(
              category.icon!,
              width: 20,
              height: 20,
            ),
            const SizedBox(height: Const.space15),
            Expanded(
              child: Text(
                category.name!,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleSmall!.copyWith(
                  height: 1.2,
                  fontSize: 10
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
