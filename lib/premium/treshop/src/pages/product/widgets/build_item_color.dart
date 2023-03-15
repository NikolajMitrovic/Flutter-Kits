part of '../product_page.dart';

class _BuildItemColor extends StatefulWidget {
  const _BuildItemColor({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  State<_BuildItemColor> createState() => _BuildItemColorState();
}

class _BuildItemColorState extends State<_BuildItemColor> {
  int _selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            AppLocalizations.of(context)!.item_color,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space8),
          Row(
            children: widget.product.itemColor!
                .asMap()
                .entries
                .map(
                  (e) => Padding(
                      padding: const EdgeInsets.only(right: Const.space12),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          setState(() {
                            _selectedColor = e.key;
                          });
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor : e.value,
                          child: (_selectedColor == e.key)
                              ? const Icon(Icons.check, color: Colors.white)
                              : const SizedBox(),
                        ),
                      )),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
