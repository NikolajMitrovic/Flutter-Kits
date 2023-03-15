part of '../profile_page.dart';

class _BuildListTile extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final Widget? child;

  const _BuildListTile({
    Key? key,
    required this.title,
     this.onTap,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: InkWell(
        onTap: onTap,
        highlightColor: theme.hintColor.withOpacity(.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  title,
                  style: theme.textTheme.displaySmall,
                  maxLines: 1,
                ),
                if (child == null) const Icon(Icons.arrow_forward_ios) else child!,
              ],
            ),
            const SizedBox(height: 5),
            Divider(color: theme.hintColor),
            const SizedBox(height: Const.space15),
          ],
        ),
      ),
    );
  }
}
