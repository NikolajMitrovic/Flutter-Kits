part of '../search_page.dart';

class _SuggestionAllProductSection extends StatelessWidget {
  final List<ProductModel>? itemCount;

  const _SuggestionAllProductSection({Key? key, this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: itemCount!.length,
        itemBuilder: (BuildContext context, int index) {
          final data = itemCount![index];
          return Column(
            children: <Widget>[
              ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: OctoImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      data.images!.first,
                    ),
                  ),
                ),
                title: Text(
                  itemCount![index].name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: theme.textTheme.bodyLarge,
                ),
                subtitle: Text(
                  NumberFormat.currency(
                    symbol: r'$ ',
                  ).format(itemCount![index].price),
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.displaySmall,
                ),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Get.toNamed<dynamic>(
                    ShuppyRoutes.product,
                    arguments: data,
                  );
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
