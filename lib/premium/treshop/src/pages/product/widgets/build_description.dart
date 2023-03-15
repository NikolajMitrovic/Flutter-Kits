part of '../product_page.dart';

class _BuildDescription extends StatelessWidget {
  const _BuildDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.description,
            style: theme.textTheme.displaySmall,
          ),
          ReadMoreText(
            product.description!,
            style: theme.textTheme.titleMedium,
            trimMode: TrimMode.Line,
            trimLines: 5,
            trimCollapsedText: AppLocalizations.of(context)!.read_more,
            trimExpandedText: AppLocalizations.of(context)!.show_less,
            lessStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.primaryColor,
            ),
            moreStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
