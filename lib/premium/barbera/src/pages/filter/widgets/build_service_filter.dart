part of '../filter_page.dart';

class _BuildServiceFilter extends StatefulWidget {
  const _BuildServiceFilter({
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildServiceFilter> createState() => __BuildServiceFilterState();
}

class __BuildServiceFilterState extends State<_BuildServiceFilter> {
  late int _selectedService = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.services,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space12),
          Wrap(
            spacing: Const.space12,
            children: categoryList(context).asMap().entries.map((e) {
              final index = e.key;
              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedService = index;
                  });
                },
                borderRadius: BorderRadius.circular(Const.radius),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.space12,
                    vertical: Const.space5,
                  ),
                  margin: const EdgeInsets.only(bottom: Const.space12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Const.radius),
                    color: (_selectedService == index)
                        ? theme.primaryColor
                        : theme.disabledColor.withOpacity(.2),
                  ),
                  child: Text(
                    e.value.name ?? '',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: (_selectedService == index) ? Colors.white : null,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
