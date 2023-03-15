part of '../home_page.dart';

class _HeaderSection extends StatelessWidget {
  final VoidCallback? onSearchTap;
  final VoidCallback? onCartTap;
  final VoidCallback? onEditingComplete;
  final TextEditingController? controller;

  const _HeaderSection({
    Key? key,
    this.onSearchTap,
    this.onCartTap,
    this.controller,
    this.onEditingComplete,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: Const.margin),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(15),
              ),
              padding:const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  InkWell(
                    onTap: onSearchTap,
                    child: Icon(
                      FeatherIcons.search,
                      color: theme.hintColor,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      autocorrect: false,
                      style: theme.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        hintText: '${AppLocalizations.of(context)!.search}...',
                        hintStyle: theme.textTheme.titleMedium,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding:const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                      ),
                      onEditingComplete: onEditingComplete,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconBadge(
            icon:const Icon(FeatherIcons.shoppingCart),
            onTap: onCartTap,
            hideZero: true,
          ),
        ],
      ),
    );
  }
}
