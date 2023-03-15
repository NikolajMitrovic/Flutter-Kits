part of '../language_page.dart';

class TreshopLanguageScreen extends StatelessWidget {
  const TreshopLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Text title(String val) {
      switch (val) {
        case 'en':
          return Text('English', style: theme.textTheme.bodyMedium);
        case 'id':
          return Text('Bahasa Indonesia', style: theme.textTheme.bodyMedium);
        default:
          return Text('English', style: theme.textTheme.bodyMedium);
      }
    }

    return Consumer<LocaleProvider>(builder: (context, locale, snapshot) {
      final lang = locale.locale ?? Localizations.localeOf(context);

      return Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.change_language,
        ),
        body: Card(
          elevation: 6,
          margin: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.space8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: lang,
                iconSize: 24,
                elevation: 16,
                dropdownColor: theme.cardColor,
                isExpanded: true,
                style: theme.textTheme.bodyMedium,
                onChanged: (Locale? newValue) {
                  locale.setLocale(newValue!);
                },
                items: L10n.all.map((v) {
                  return DropdownMenuItem(
                    value: v,
                    child: title(v.languageCode),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      );
    });
  }
}
