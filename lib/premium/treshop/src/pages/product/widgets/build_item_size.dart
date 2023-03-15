part of '../product_page.dart';

class _BuildItemSize extends StatefulWidget {
  const _BuildItemSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  State<_BuildItemSize> createState() => _BuildItemSizeState();
}

class _BuildItemSizeState extends State<_BuildItemSize> {
  int _selectedSize = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              AppLocalizations.of(context)!.item_size,
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: Const.space8),
            Row(
              children: widget.product.itemSize!
                  .asMap()
                  .entries
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: Const.space12),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectedSize = e.key;
                          });
                        },
                        borderRadius: BorderRadius.circular(25),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor : (_selectedSize == e.key)
                              ? theme.primaryColor
                              : theme.cardColor,
                          child: AutoSizeText(
                            e.value,
                            style: theme.textTheme.headlineMedium?.copyWith(
                              color: (_selectedSize == e.key)
                                  ? Colors.white
                                  : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      );
  }
}
