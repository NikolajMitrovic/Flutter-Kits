part of '../coffee_page.dart';

class _BuildIce extends StatefulWidget {
  const _BuildIce({
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildIce> createState() => _BuildIceState();
}

class _BuildIceState extends State<_BuildIce> {
  int _selectedIce = 0;
  final List<String> _iceList = [
    CustomIcons.lessIce,
    CustomIcons.mediumIce,
    CustomIcons.moreIce,
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: Text(
            AppLocalizations.of(context)!.ice,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        Row(
          children: _iceList
              .asMap()
              .entries
              .map(
                (e) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Const.space12),
                  child: InkWell(
                    onTap: () {
                      setState(() => _selectedIce = e.key);
                    },
                    child: SvgPicture.asset(
                      e.value,
                      color: (_selectedIce == e.key)
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
