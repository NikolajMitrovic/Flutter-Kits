part of '../coffee_page.dart';

class _BuildSize extends StatefulWidget {
  const _BuildSize({
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildSize> createState() => _BuildSizeState();
}

class _BuildSizeState extends State<_BuildSize> {
  int _selectedSize = 0;
  final List<String> _sizeList = [
    CustomIcons.smallSize,
    CustomIcons.mediumSize,
    CustomIcons.bigSize,
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            AppLocalizations.of(context)!.size,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Row(
          children: _sizeList
              .asMap()
              .entries
              .map(
                (e) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Const.space12),
                  child: InkWell(
                    onTap: () {
                      setState(() => _selectedSize = e.key);
                    },
                    child: SvgPicture.asset(
                      e.value,
                      color: (_selectedSize == e.key)
                          ? theme.primaryColor
                          : theme.disabledColor,
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
