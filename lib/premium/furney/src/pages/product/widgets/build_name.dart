part of '../product_page.dart';

class _BuildName extends StatelessWidget {
  const _BuildName({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: AutoSizeText(
        product.name!,
        style: theme.textTheme.displayMedium,
        maxLines: 2,
      ),
    );
  }
}
