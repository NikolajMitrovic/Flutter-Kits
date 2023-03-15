part of '../product_page.dart';

class _BuildColors extends StatefulWidget {
  @override
  State<_BuildColors> createState() => __BuildColorsState();
}

class __BuildColorsState extends State<_BuildColors> {
  int? _colorIndex;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            AppLocalizations.of(context)!.colors,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          Wrap(
            children: FilterList.colorList.asMap().entries.map((e) {
              final index = e.key;
              final val = e.value;
              return Padding(
                padding: const EdgeInsets.only(
                  right: Const.space12,
                  bottom: Const.space12,
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        _colorIndex = index;
                      });
                    },
                    borderRadius: BorderRadius.circular(Const.radius),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor : val,
                      child: (_colorIndex == index)
                          ? const CircleAvatar(
                              radius: 12,
                              backgroundColor : Colors.white,
                            )
                          : const SizedBox(),
                    )),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
