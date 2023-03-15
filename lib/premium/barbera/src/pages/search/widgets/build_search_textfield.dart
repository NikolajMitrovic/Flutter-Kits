part of '../search_page.dart';

class _HeaderSection extends StatelessWidget {
  final TextEditingController? searchController;
  final ValueChanged<String>? onChanged;
  final VoidCallback onSearchTap;
  final VoidCallback onFilterTap;
  final int? productFound;

  const _HeaderSection({
    Key? key,
    this.onChanged,
    this.searchController,
    required this.onSearchTap,
    this.productFound,
    required this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: Screens.width(context),
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: theme.hintColor.withOpacity(.05),
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: TextField(
                controller: searchController,
                autocorrect: false,
                style: theme.textTheme.bodyMedium,
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!
                      .search_for_barbershop_name,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: onSearchTap,
                    color: theme.primaryColor,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 5,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: Const.space12),
          CustomElevatedButton(
            onTap: onFilterTap,
            width: 50,
            height: 50,
            child: const Icon(
              FeatherIcons.filter,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
