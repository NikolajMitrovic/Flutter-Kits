part of '../home_page.dart';

class _CategoryCard extends StatelessWidget {
  final CategoryModel? category;
  final VoidCallback? onCategoryTap;

  const _CategoryCard({Key? key, this.category, this.onCategoryTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = Provider.of<ThemeProvider>(context);

    return Container(
      width: 70,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.only(right: Const.space15),
      child: InkWell(
        onTap: onCategoryTap,
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor : theme.backgroundColor ,
              child: SvgPicture.asset(
                category!.icon!,
                color: (provider.isDarkTheme == true)
                    ? ColorDark.fontTitle
                    : ColorLight.fontTitle,
              ),
            ),
            const Spacer(),
            AutoSizeText(
              category!.name!,
              style: theme.textTheme.titleSmall,
              maxFontSize: 14,
              softWrap: true,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
