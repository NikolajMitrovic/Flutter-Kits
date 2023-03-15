part of '../home_page.dart';

class _BuildScrollable extends StatelessWidget {
  final List<ProductModel> itemList;
  final String label;
  final VoidCallback onViewAllTap;

  const _BuildScrollable({
    Key? key,
    required this.itemList,
    required this.label,
    required this.onViewAllTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: theme.textTheme.displaySmall),
              InkWell(
                onTap: onViewAllTap,
                borderRadius: BorderRadius.circular(Const.radius),
                child: Text(
                  AppLocalizations.of(context)!.see_all,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: theme.primaryColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: double.infinity,
          height: 285,
          child: ListView.builder(
            itemCount: itemList.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final product = itemList[index];
              return _ProductCard(product: product);
            },
          ),
        ),
      ],
    );
  }
}
