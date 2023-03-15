part of  '../home_page.dart';


class _BuildCategoryCard extends StatelessWidget {
  const _BuildCategoryCard({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  final CategoryModel category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: Const.space15),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Const.space12),
        child: SizedBox(
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                padding: const EdgeInsets.all(Const.space12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Const.space12),
                  color: category.color,
                ),
                child: SvgPicture.asset(
                  category.icon ?? '',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: Const.space8),
              Expanded(
                child: Text(
                  category.name ?? '',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
