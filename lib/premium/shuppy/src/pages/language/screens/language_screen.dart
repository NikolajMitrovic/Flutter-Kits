part of '../language_page.dart';

class ShuppyLanguageScreen extends StatefulWidget {
  const ShuppyLanguageScreen({Key? key}) : super(key: key);

  @override
  State<ShuppyLanguageScreen> createState() => _ShuppyLanguageScreenState();
}

class _ShuppyLanguageScreenState extends State<ShuppyLanguageScreen> {
  Locale? _selectedLocale;

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<LocaleProvider>(builder: (context, state, snapshot) {
      String language(String val) {
        switch (val) {
          case 'id':
            return 'Indonesian';
          default:
            return 'English';
        }
      }

      return Scaffold(
        appBar: CustomAppBar(context,
            title: AppLocalizations.of(context)!.change_language,
            actions: [
              CustomTextButton(
                label: AppLocalizations.of(context)!.done,
                onTap: () {
                  state.setLocale(_selectedLocale!);
                },
              ),
            ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: L10n.all.map((locale) {
            return RadioListTile(
              value: locale,
              contentPadding: const EdgeInsets.symmetric(horizontal: Const.margin),
              activeColor: theme.primaryColor,
              title: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(language(locale.languageCode),
                        style: theme.textTheme.bodyMedium)
                  ],
                ),
              ),
              groupValue: _selectedLocale,
              onChanged: (dynamic value) {
                setState(() {
                  _selectedLocale = locale;
                });
              },
            );
          }).toList(),
        ),
      );
    });
  }
}
