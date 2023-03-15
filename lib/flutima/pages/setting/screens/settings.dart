part of '../setting_page.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
          _BuildLanguage(),
          SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}

class _BuildGeneral extends StatefulWidget {
  const _BuildGeneral({Key? key}) : super(key: key);

  @override
  State<_BuildGeneral> createState() => __BuildGeneralState();
}

class __BuildGeneralState extends State<_BuildGeneral> {
  final String _androidAppID = 'com.byneetdev.ultimate_bundle';
  final String _codecanyonUrl =
      'https://codecanyon.net/item/flutter-ecommerce-ui-kit/28404745';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  _BuildSwitchTile(
                    value: mode.isDarkTheme,
                    label: AppLocalizations.of(context)!.rate_the_app,
                    onTap: () => LaunchReview.launch(
                      androidAppId: _androidAppID,
                    ),
                  ),
                  _BuildSwitchTile(
                    value: mode.isDarkTheme,
                    label: AppLocalizations.of(context)!.purchase_this_app,
                    onTap: () => _launchInBrowser(_codecanyonUrl),
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

class _BuildLanguage extends StatefulWidget {
  const _BuildLanguage({Key? key}) : super(key: key);

  @override
  State<_BuildLanguage> createState() => __BuildLanguageState();
}

class __BuildLanguageState extends State<_BuildLanguage> {
  Locale? _selectedLocale = L10n.all.first;

  @override
  void initState() {
    super.initState();
    switch (Platform.localeName) {
      case 'id_ID':
        _selectedLocale = L10n.all[1];
        break;
      default:
        _selectedLocale = L10n.all.first;
    }
  }

  String language(String val) {
    switch (val) {
      case 'id':
        return 'Indonesian';
      default:
        return 'English';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localeProv = Provider.of<LocaleProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
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
                children: L10n.all.map((locale) {
                  return RadioListTile(
                    value: locale,
                    contentPadding: EdgeInsets.zero,
                    activeColor: theme.primaryColor,
                    title: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            language(locale.languageCode),
                            style: theme.textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    groupValue: _selectedLocale,
                    onChanged: (dynamic value) {
                      setState(() {
                        _selectedLocale = locale;
                        localeProv.setLocale(locale);
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          )
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
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  final bool value;
  final String label;
  final ValueChanged<bool>? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: (onChanged == null) ? onTap : () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium,
          ),
          if (onChanged == null)
            Padding(
              padding: const EdgeInsets.fromLTRB(
                0,
                10,
                10,
                10,
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: theme.disabledColor,
              ),
            )
          else
            Switch(
              value: value,
              activeColor: theme.primaryColor,
              onChanged: onChanged,
            ),
        ],
      ),
    );
  }
}
