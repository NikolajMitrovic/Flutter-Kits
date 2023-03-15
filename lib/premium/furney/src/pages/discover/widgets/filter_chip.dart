part of '../discover_page.dart';

class FilterChip extends StatelessWidget {
  final int? selectedIndex;
  final int? index;
  final String? filter;
  final VoidCallback? onFilterTap;
 
  const FilterChip({
    Key? key,
    this.selectedIndex,
    this.index,
    this.filter,
    this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(Const.radius),
      onTap: onFilterTap,
      highlightColor: theme.hintColor.withOpacity(.2),
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        alignment: Alignment.center,
        padding:const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          color:
              (selectedIndex == index) ? theme.primaryColor : theme.cardColor,
          borderRadius: BorderRadius.circular(Const.radius),
        ),
        child: Text(
          filter!,
          style: theme.textTheme.headlineMedium!.copyWith(
            color: (selectedIndex == index) ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}
