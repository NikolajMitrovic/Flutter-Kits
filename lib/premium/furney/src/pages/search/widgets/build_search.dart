part of '../search_page.dart';

class _BuildSearch extends StatelessWidget {
  final TextEditingController? searchController;
  final VoidCallback? onSearchTap;

  const _BuildSearch({Key? key, this.searchController, this.onSearchTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(Const.radius),
            ),
            alignment: Alignment.centerLeft,
            child: CustomTextFormField(
              controller: searchController,
              borderType: BorderType.outline,
              hintText:
                  AppLocalizations.of(context)!.search_everything_you_like,
            ),
          ),
        ),
       const SizedBox(width: Const.space12),
        CustomElevatedButton(
          width: 50,
          height: 50,
          onTap: onSearchTap,
          child:const Icon(
            FeatherIcons.search,
            size: 20,
          ),
        )
      ],
    );
  }
}
