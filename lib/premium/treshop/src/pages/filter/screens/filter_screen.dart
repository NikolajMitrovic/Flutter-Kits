part of '../filter_page.dart';

class TreshopFilterScreen extends StatefulWidget {
  final ScrollController? scrollController;

  const TreshopFilterScreen({
    Key? key,
    this.scrollController,
  }) : super(key: key);

  @override
  State<TreshopFilterScreen> createState() => _TreshopFilterScreenState();
}

class _TreshopFilterScreenState extends State<TreshopFilterScreen> {
  int _selectedSize = 0;
  int _selectedColor = 0;
  int _selectedCategory = 0;
  String? _selectedBrand;

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
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
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
              AutoSizeText(
                AppLocalizations.of(context)!.filter,
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
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.size,
            style: theme.textTheme.displayMedium,
          ),
          const SizedBox(height: Const.space8),
          Row(
            children: SortAndFilterList.sizeList
                .asMap()
                .entries
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        _selectedSize = e.key;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: Const.space12),
                      child: AutoSizeText(
                        e.value,
                        style: theme.textTheme.displayMedium!.copyWith(
                          color: (_selectedSize == e.key)
                              ? theme.primaryColor
                              : null,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.color,
            style: theme.textTheme.displayMedium,
          ),
          const SizedBox(height: Const.space8),
          Row(
            children: SortAndFilterList.colorList
                .asMap()
                .entries
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        _selectedColor = e.key;
                      });
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(right: Const.space12),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor : e.value,
                          child: (_selectedColor == e.key)
                              ? const Icon(
                                  FeatherIcons.check,
                                  color: Colors.white,
                                )
                              : const SizedBox(),
                        )),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.categories,
            style: theme.textTheme.displayMedium,
          ),
          const SizedBox(height: Const.space8),
          Wrap(
            children: SortAndFilterList.categoryList(context)
                .asMap()
                .entries
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        _selectedCategory = e.key;
                      });
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(right: Const.space12),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Const.space15,
                            vertical: 5,
                          ),
                          margin: const EdgeInsets.only(bottom: Const.space8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: (_selectedCategory == e.key)
                                  ? theme.primaryColor
                                  : theme.hintColor,
                            ),
                            borderRadius: BorderRadius.circular(Const.radius),
                            color: (_selectedCategory == e.key)
                                ? theme.primaryColor
                                : theme.backgroundColor ,
                          ),
                          child: AutoSizeText(
                            e.value,
                            style: theme.textTheme.displaySmall!.copyWith(
                              color: (_selectedCategory == e.key)
                                  ? Colors.white
                                  : null,
                            ),
                          ),
                        )),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.brand,
            style: theme.textTheme.displayMedium,
          ),
          const SizedBox(height: Const.space8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Const.space12),
            decoration: BoxDecoration(
              color: theme.hintColor.withOpacity(.05),
              borderRadius: BorderRadius.circular(Const.radius),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedBrand,
                elevation: 16,
                style: theme.textTheme.titleMedium,
                isExpanded: true,
                hint: AutoSizeText(AppLocalizations.of(context)!.select_brand,
                    style: theme.textTheme.titleMedium),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedBrand = newValue;
                  });
                },
                items: SortAndFilterList.brandList
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child:
                        AutoSizeText(value, style: theme.textTheme.bodyMedium),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
