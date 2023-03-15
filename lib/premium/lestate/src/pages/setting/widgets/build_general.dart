part of '../setting_page.dart';

class _BuildGeneral extends StatefulWidget {
  const _BuildGeneral({Key? key}) : super(key: key);

  @override
  State<_BuildGeneral> createState() => __BuildGeneralState();
}

class __BuildGeneralState extends State<_BuildGeneral> {
  bool _activeNotification = false;
  bool _activeVibration = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mode = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.general,
            style: theme.textTheme.displaySmall,
          ),
          const SizedBox(height: Const.space15),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Const.radius),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Const.space15),
              child: Column(
                children: [
                  _BuildSwitchTile(
                    value: mode.isDarkTheme,
                    label: AppLocalizations.of(context)!.dark_mode,
                    onChanged: (v) {
                      mode.changeTheme();
                    },
                  ),
                  Divider(color: theme.primaryColor),
                  _BuildSwitchTile(
                    value: _activeNotification,
                    label: AppLocalizations.of(context)!.notification,
                    onChanged: (v) {
                      setState(() => _activeNotification = v);
                    },
                  ),
                  Divider(color: theme.primaryColor),
                  _BuildSwitchTile(
                    value: _activeVibration,
                    label: AppLocalizations.of(context)!.vibrate,
                    onChanged: (v) {
                      setState(() => _activeVibration = v);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
