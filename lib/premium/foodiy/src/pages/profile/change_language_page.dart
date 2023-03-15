import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

enum LanguageAvailable { us, id }

class FoodiyChangeLanguageScreen extends StatefulWidget {
  const FoodiyChangeLanguageScreen({Key? key}) : super(key: key);
  @override
  State<FoodiyChangeLanguageScreen> createState() => _FoodiyChangeLanguageScreenState();
}

class _FoodiyChangeLanguageScreenState extends State<FoodiyChangeLanguageScreen> {
  LanguageAvailable? _selectedLanguage = LanguageAvailable.us;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor : theme.backgroundColor ,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: theme.primaryColor,
          onPressed: Get.back,
        ),
        title: Text(
          AppLocalizations.of(context)!.change_language,
          style: theme.textTheme.displaySmall,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              switch (_selectedLanguage) {
                case LanguageAvailable.us:
                  setState(() {
                    // context.setLocale(const Locale('en', 'US'));
                  });
                  break;
                case LanguageAvailable.id:
                  setState(() {
                    // context.setLocale(const Locale('id', 'ID'));
                  });
                  break;

                default:
              }
            },
            child: Text(
              AppLocalizations.of(context)!.save,
              style: theme.textTheme.displaySmall!.copyWith(
                color: theme.primaryColor,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          RadioListTile(
            value: LanguageAvailable.us,
            groupValue: _selectedLanguage,
            title: Text('English • US', style: theme.textTheme.bodyLarge),
            onChanged: (LanguageAvailable? val) {
              setState(() {
                _selectedLanguage = val;
              });
            },
          ),
          RadioListTile(
            value: LanguageAvailable.id,
            groupValue: _selectedLanguage,
            title: Text('Indonesian • ID', style: theme.textTheme.bodyLarge),
            onChanged: (LanguageAvailable? val) {
              setState(() {
                _selectedLanguage = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
