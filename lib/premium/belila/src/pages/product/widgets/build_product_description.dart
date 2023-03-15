part of '../product_page.dart';



class _BuildProductDescription extends StatelessWidget {
  const _BuildProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductDetailModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.product_description,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space12),
        ReadMoreText(
          product.description ?? '',
          style: theme.textTheme.bodyMedium,
          colorClickableText: theme.primaryColor,
          textAlign: TextAlign.left,
          trimLines: 7,
          trimMode: TrimMode.Line,
          trimCollapsedText: AppLocalizations.of(context)!.show_more,
          trimExpandedText: AppLocalizations.of(context)!.show_less,
        ),
      ],
    );
  }
}
