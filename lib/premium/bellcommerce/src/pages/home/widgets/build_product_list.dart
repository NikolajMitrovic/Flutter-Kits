part of '../home_page.dart';

class _BuildProductList extends StatelessWidget {
  final String label;
  final VoidCallback onSeeAllTap;
  final List<ProductModel> productList;

  const _BuildProductList({
    Key? key,
    required this.label,
    required this.onSeeAllTap,
    required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                label,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              GestureDetector(
                onTap: onSeeAllTap,
                child: Text(
                  AppLocalizations.of(context)!.see_all,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: double.infinity,
          height: 230,
          child: ListView.builder(
            itemCount: productList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final product = productList[index];
              return _ProductCard(product: product);
            },
          ),
        ),
      ],
    );
  }
}
