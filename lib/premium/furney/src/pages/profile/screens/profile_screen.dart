part of '../profile_page.dart';

class FurneyProfileScreen extends StatelessWidget {
  const FurneyProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        enableLeading: false,
        title: AppLocalizations.of(context)!.profile,
      ),
      body: ListView(
        children: [
          _HeaderSection(),
          const SizedBox(height: Const.space25),
          _BuildListTile(
            title: AppLocalizations.of(context)!.dark_mode,
            child: Switch(
              value: theme.isDarkTheme,
              activeColor: Theme.of(context).primaryColor,
              onChanged:(v)=> theme.changeTheme(),
            ),
          ),
          _BuildListTile(
            title: AppLocalizations.of(context)!.my_order,
            onTap: () => Get.toNamed<dynamic>(FurneyRoutes.order),
          ),
          _BuildListTile(
            title: AppLocalizations.of(context)!.my_favorite,
            onTap: () => Get.toNamed<dynamic>(FurneyRoutes.favorite),
          ),
          _BuildListTile(
            title: AppLocalizations.of(context)!.shipping_address,
            onTap: () => Get.toNamed<dynamic>(FurneyRoutes.address),
          ),
          _BuildListTile(
            title: AppLocalizations.of(context)!.my_saved_cards,
            onTap: () => Get.toNamed<dynamic>(FurneyRoutes.creditCard),
          ),
          _BuildListTile(
            title: AppLocalizations.of(context)!.change_language,
            onTap: () => Get.toNamed<dynamic>(FurneyRoutes.language),
          ),
          _BuildListTile(
            title: AppLocalizations.of(context)!.logout,
            onTap: () {
              Dialogs.labelDialog(
                context,
                barrierDismissible: true,
                title: AppLocalizations.of(context)!.are_you_sure_want_to_quit,
                primaryButtonLabel: AppLocalizations.of(context)!.yes,
                onPrimaryButtonTap: () => Get.offAllNamed<dynamic>(FurneyRoutes.signIn),
              );
            },
          ),
        ],
      ),
    );
  }
}
