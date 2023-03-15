part of '../profile_page.dart';

class _BodySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<ThemeProvider>(builder: (context, state, snapshot) {
      return Column(
        children: [
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1000),
            child: ListTile(
              onTap: () {
                Get.toNamed<dynamic>(
                  ShuppyRoutes.editProfile,
                  arguments: UserModel(
                      fullName: 'Veranda',
                      email: 'byneetdev@gmail.com',
                      address: 'Jl. S. Parman',
                      phoneNumber: '087812822382'),
                );
              },
              leading: Icon(FeatherIcons.edit, color: theme.primaryColor),
              title: Text(AppLocalizations.of(context)!.edit_profile,
                  style: theme.textTheme.headlineMedium),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: (state.isDarkTheme == true)
                    ? ColorDark.fontSubtitle
                    : ColorLight.fontSubtitle,
              ),
            ),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1100),
            child: ListTile(
              onTap: () {
                Get.toNamed<dynamic>(ShuppyRoutes.favorite);
              },
              leading: Icon(FeatherIcons.heart, color: theme.primaryColor),
              title: Text(AppLocalizations.of(context)!.favorite,
                  style: theme.textTheme.headlineMedium),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: (state.isDarkTheme == true)
                    ? ColorDark.fontSubtitle
                    : ColorLight.fontSubtitle,
              ),
            ),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1200),
            child: ListTile(
              onTap: () {
                Get.toNamed<dynamic>(
                  ShuppyRoutes.orderHistory,
                  arguments: false,
                );
              },
              leading:
                  Icon(FeatherIcons.shoppingBag, color: theme.primaryColor),
              title: Text(AppLocalizations.of(context)!.order_history,
                  style: theme.textTheme.headlineMedium),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: (state.isDarkTheme == true)
                    ? ColorDark.fontSubtitle
                    : ColorLight.fontSubtitle,
              ),
            ),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1400),
            child: ListTile(
              onTap: () {
                final locale =
                    Provider.of<LocaleProvider>(context, listen: false);
                Get.toNamed<dynamic>(ShuppyRoutes.language,
                    arguments: locale.locale);
              },
              leading: Icon(FeatherIcons.globe, color: theme.primaryColor),
              title: Text(AppLocalizations.of(context)!.change_language,
                  style: theme.textTheme.headlineMedium),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: (state.isDarkTheme == true)
                    ? ColorDark.fontSubtitle
                    : ColorLight.fontSubtitle,
              ),
            ),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1500),
            child: ListTile(
              onTap: () {
                // Get.toNamed(ShuppyRoutes.notification)
              },
              leading: Icon(FeatherIcons.sun, color: theme.primaryColor),
              title: Text(AppLocalizations.of(context)!.dark_mode,
                  style: theme.textTheme.headlineMedium),
              trailing: Switch(
                activeColor: theme.primaryColor,
                value: state.isDarkTheme,
                onChanged: (value) {
                  state.changeTheme();
                },
              ),
            ),
          ),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 1700),
            child: ListTile(
              onTap: () {
                Dialogs.labelDialog(
                  context,
                  title: AppLocalizations.of(context)!
                      .are_you_sure_you_want_to_sign_out,
                  primaryButtonLabel: AppLocalizations.of(context)!.yes,
                  onPrimaryButtonTap: () =>
                      Get.offAllNamed<dynamic>(ShuppyRoutes.splash),
                );
              },
              leading: Icon(FeatherIcons.logOut, color: theme.primaryColor),
              title: Text(AppLocalizations.of(context)!.exit,
                  style: theme.textTheme.headlineMedium),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: (state.isDarkTheme == true)
                    ? ColorDark.fontSubtitle
                    : ColorLight.fontSubtitle,
              ),
            ),
          ),
        ],
      );
    });
  }
}
