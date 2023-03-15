part of '../setting_page.dart';

class LestateSettingScreen extends StatelessWidget {
  const LestateSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.settings,
      ),
      body: ListView(
        children: const [
          _BuildGeneral(),
          SizedBox(height: Const.space25),
          _BuildSecurity(),
          SizedBox(height: Const.space25),
          _BuildLanguage(),
          SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}

class _BuildSwitchTile extends StatelessWidget {
  const _BuildSwitchTile({
    Key? key,
    required this.value,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final bool value;
  final String label;
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.bodyMedium,
        ),
        Switch(
          value: value,
          activeColor: Const.accentColor,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
