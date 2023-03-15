part of '../product_page.dart';

class _BuildProductInformation extends StatelessWidget {
  final ProductDetailModel product;

  const _BuildProductInformation({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.product_information,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space12),
        // buildProductInformation(
        //   context,
        //   title: "Berat",
        //   leading: "100 Kg",
        // ),
        // SizedBox(height: 12.0),
        buildProductInformation(
          context,
          title: AppLocalizations.of(context)!.condition,
          leading: (product.isNew == true)
              ? AppLocalizations.of(context)!.new_product
              : AppLocalizations.of(context)!.second_hand,
        ),
        const SizedBox(height: Const.space12),
        buildProductInformation(
          context,
          title: AppLocalizations.of(context)!.category,
          leading: product.category?.name ?? '',
        ),
        const SizedBox(height: Const.space12),
        buildProductInformation(
          context,
          title: AppLocalizations.of(context)!.stock,
          leading: product.stock.toString(),
          // leading: 1.toString(),
        ),
        const SizedBox(height: Const.space15),
      ],
    );
  }

  Row buildProductInformation(
    BuildContext context, {
    required String title,
    required String leading,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        Text(leading, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
