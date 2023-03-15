part of '../product_page.dart';

class _StoreListTile extends StatelessWidget {
  final ProductDetailModel? product;

  const _StoreListTile({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () => Get.toNamed<dynamic>(BelilaRoutes.store),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor : theme.backgroundColor ,
        backgroundImage: CachedNetworkImageProvider(
          product?.store?.image ?? Const.image,
        ),
      ),
      title: Text(
        product?.store?.name ?? '',
        style: theme.textTheme.bodyLarge,
        textAlign: TextAlign.left,
        maxLines: 1,
      ),
      // subtitle: Row(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     const Icon(Icons.location_on, size: 15.0),
      //     const SizedBox(width: Const.space5),
      //     Text(
      //       product!.store!.address ?? '',
      //       style: theme.textTheme.titleSmall,
      //       textAlign: TextAlign.left,
      //       maxLines: 1,
      //     ),
      //   ],
      // ),
    );
  }
}
