part of '../setting_page.dart';

class _BuildListTile extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final void Function()? onTap;
  final bool isSwitch;

  const _BuildListTile(
      {Key? key, this.title, this.icon, this.onTap, this.isSwitch = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: Const.margin),
      onTap: isSwitch ? null : onTap,
      leading: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          // border: Border.all(color: theme.disabledColor),
          // borderRadius: BorderRadius.circular(Const.radius),
          shape:BoxShape.circle,
          color: theme.primaryColor.withOpacity(.05),
        ),
        child: Icon(
          icon,
          color: theme.primaryColor,
        ),
      ),
      title: Text(title!, style: theme.textTheme.bodyLarge),
      trailing: isSwitch
          ? Switch(
              value: themeProv.isDarkTheme,
              activeColor: theme.primaryColor,
              onChanged: (val) {
                themeProv.changeTheme();
              },
            )
          : Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: themeProv.isDarkTheme
                  ? ColorDark.fontTitle
                  : ColorLight.fontTitle,
            ),
    );
  }
}
