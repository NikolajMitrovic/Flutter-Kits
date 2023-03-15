part of '../setting_page.dart';

class CoffiySettingScreen extends StatelessWidget {
  const CoffiySettingScreen({Key? key}) : super(key: key);

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
