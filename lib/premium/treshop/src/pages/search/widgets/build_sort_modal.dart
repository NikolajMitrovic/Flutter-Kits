part of '../search_page.dart';

class _BuildSortModal extends StatefulWidget {
  final ScrollController? scrollController;

  const _BuildSortModal({
    Key? key,
    this.scrollController,
  }) : super(key: key);

  @override
  State<_BuildSortModal> createState() => __BuildSortModalState();
}

class __BuildSortModalState extends State<_BuildSortModal> {
  int? _selectedSort = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(Const.radius),
        topRight: Radius.circular(Const.radius),
      ),
      child: ListView(
        controller: widget.scrollController,
        children: [
          const SizedBox(height: Const.space8),
          Center(
            child: Container(
              width: Screens.width(context) / 10,
              height: 3,
              decoration: BoxDecoration(
                color: theme.hintColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(Const.radius),
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          Row(
            children: [
              const SizedBox(width: Const.margin),
              AutoSizeText(
                AppLocalizations.of(context)!.sort,
                style: theme.textTheme.displayMedium,
              ),
              const Spacer(),
              CustomTextButton(
                label: AppLocalizations.of(context)!.close,
                onTap: Get.back,
                textColor: theme.primaryColor,
              ),
              const SizedBox(width: Const.space12),
            ],
          ),
          Column(
            children: SortAndFilterList.sortList(context)
                .asMap()
                .entries
                .map(
                  (e) => RadioListTile(
                    value: e.key,
                    groupValue: _selectedSort,
                    activeColor: theme.primaryColor,
                    autofocus: false,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: Const.margin,
                    ),
                    onChanged: (int? v) {
                      setState(() {
                        _selectedSort = v;
                      });
                    },
                    title: AutoSizeText(
                      e.value,
                      style: theme.textTheme.headlineMedium,
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
