part of '../search_page.dart';

class _HeaderSection extends StatelessWidget {
  final TextEditingController? searchController;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSearchTap;
  const _HeaderSection({
    Key? key,
    this.onChanged,
    this.searchController,
    this.onSearchTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      margin: const EdgeInsets.only(bottom: Const.margin),
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
                .search_anything_you_like,
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
    );
  }
}
