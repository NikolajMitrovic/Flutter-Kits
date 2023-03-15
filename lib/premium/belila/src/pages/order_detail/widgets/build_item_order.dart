part of '../order_detail_page.dart';

class _BuildItemOrder extends StatelessWidget {
  final List<ProductOrderModel> itemCount;

  const _BuildItemOrder({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Get.toNamed<dynamic>(BelilaRoutes.store),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor : theme.cardColor,
                backgroundImage: CachedNetworkImageProvider(
                  itemCount.first.store!.image!,
                ),
              ),
              const SizedBox(width: Const.space12),
              Expanded(
                child: Text(
                  itemCount.first.store!.name!,
                  maxLines: 1,
                  style: theme.textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Const.space15),
        Row(
          children: [
            Expanded(
              child: CustomOutlinedButton(
                height: 40,
                onTap: () {
                  Get.toNamed<dynamic>(BelilaRoutes.chat);
                },
                child: Row(
                  children: [
                    Icon(
                      FeatherIcons.messageCircle,
                      size: 20,
                      color: theme.primaryColor,
                    ),
                    const SizedBox(width: Const.space5),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.contact_the_seller,
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: Const.space15),
            Expanded(
              child: CustomOutlinedButton(
                height: 40,
                onTap: () => Get.toNamed<dynamic>(
                  BelilaRoutes.store,
                  arguments: itemCount.first.store!.id,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.store_outlined,
                      size: 20,
                      color: theme.primaryColor,
                    ),
                    const SizedBox(width: Const.space5),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.visit_store,
                        style: theme.textTheme.titleMedium,
                        maxLines: 1,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: Const.space15),
        Text(
          // AppLocalizations.of(context)!.ordered_items,
          AppLocalizations.of(context)!.item_ordered,
          style: theme.textTheme.displaySmall,
        ),
        const SizedBox(height: Const.space8),
        SizedBox(
          width: Screens.width(context),
          height: 100,
          child: ListView.builder(
            itemCount: itemCount.length,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = itemCount[index];
              return _ProductOrderCard(product: product);
            },
          ),
        ),
      ],
    );
  }
}
