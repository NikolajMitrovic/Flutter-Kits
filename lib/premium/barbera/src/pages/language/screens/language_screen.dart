part of '../language_page.dart';

class BarberaLanguageScreen extends StatelessWidget {
  const BarberaLanguageScreen({Key? key}) : super(key: key);

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
          title: AppLocalizations.of(context)!.language,
          actions: [
            IconButton(
              onPressed: () {},
              color: theme.primaryColor,
              icon: const Icon(FeatherIcons.check),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            children: [
              const SizedBox(height: Const.space25),
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.language,
                    height: 25,
                  ),
                  const SizedBox(width: Const.space12),
                  Text(
                    AppLocalizations.of(context)!.available_languages,
                    style: theme.textTheme.displaySmall,
                  )
                ],
              ),
              const SizedBox(height: Const.space15),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Const.space8),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<Locale>(
                      value: lang,
                      elevation: 16,
                      dropdownColor: theme.cardColor,
                      isExpanded: true,
                      style: theme.textTheme.bodyMedium,
                      onChanged: (Locale? newValue) {
                        locale.setLocale(newValue!);
                      },
                      items: L10n.all.map((Locale v) {
                        return DropdownMenuItem(
                          value: v,
                          child: title(v.languageCode),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
