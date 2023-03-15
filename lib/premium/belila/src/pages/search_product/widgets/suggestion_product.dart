part of '../search_page.dart';

class _SuggestionProduct extends StatelessWidget {
  final List<ProductModel> productList;

  const _SuggestionProduct({
    Key? key,
    required this.productList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeMode = Provider.of<ThemeProvider>(context);

    if (productList.isEmpty) {
      return CustomEmptyIllustration(
        onRefresh: () async {},
        image: Illustrations.searchNotFound,
        description: AppLocalizations.of(context)!.product_not_found,
      );
    } else {
      return Container(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (BuildContext context, int index) {
            final data = productList[index];

            return Column(
              children: <Widget>[
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(Const.radius),
                    child: OctoImage(
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                      image: CachedNetworkImageProvider(
                        data.image ?? '',
                      ),
                    ),
                  ),
                  title: Text(
                    data.name ?? '',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: themeMode.isDarkTheme
                          ? ColorDark.fontTitle
                          : ColorLight.fontTitle,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  subtitle: Text(
                    NumberFormat.currency(
                      symbol: 'Rp. ',
                      decimalDigits: 0,
                      locale: 'id-ID',
                    ).format(data.price),
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.displaySmall?.copyWith(
                      color: themeMode.isDarkTheme
                          ? ColorDark.fontTitle
                          : ColorLight.fontTitle,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    Get.toNamed<dynamic>(BelilaRoutes.product);
                  },
                ),
                const Divider(),
              ],
            );
          },
        ),
      );
    }
  }
}
