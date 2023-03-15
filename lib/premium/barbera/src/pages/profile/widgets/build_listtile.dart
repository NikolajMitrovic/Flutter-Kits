part of '../profile_page.dart';

class _BuildListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _BuildListTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: Screens.width(context),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Row(
                children: [
                  Icon(icon, size: Const.space25),
                  const SizedBox(width: Const.space15),
                  Text(title, style: theme.textTheme.titleSmall),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios, size: Const.space25),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: Const.margin),
              child: Divider(color: theme.unselectedWidgetColor),
            ),
          ],
        ),
      ),
    );
  }
}
