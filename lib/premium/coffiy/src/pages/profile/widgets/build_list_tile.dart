part of '../profile_page.dart';

class _BuildListTile extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final VoidCallback onTap;

  const _BuildListTile({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mode = Provider.of<ThemeProvider>(context);
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space5,
      ),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor : theme.disabledColor.withOpacity(.2),
        child: Icon(
          icon,
          color: (mode.isDarkTheme == true)
              ? ColorDark.fontTitle
              : ColorLight.fontTitle,
        ),
      ),
      title: Text(label, style: theme.textTheme.titleSmall),
      subtitle: Text(
        value,
        style: theme.textTheme.bodyMedium,
      ),
      trailing: IconButton(
        onPressed: onTap,
        icon: const Icon(IconlyLight.edit),
      ),
    );
  }
}
