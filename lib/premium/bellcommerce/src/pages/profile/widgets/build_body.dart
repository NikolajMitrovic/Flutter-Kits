part of '../profile_page.dart';

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      elevation: 8,
      child: Center(
        child: Column(
          children: [
            ListTile(
              onTap: () => Get.toNamed<dynamic>(BellcommerceRoutes.order),
              leading: Icon(
                FeatherIcons.shoppingBag,
                color: theme.primaryColor,
              ),
              title: Text(
                AppLocalizations.of(context)!.my_order,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () =>Get.toNamed<dynamic>(
                BellcommerceRoutes.paymentMethod,
              ),
              leading: Icon(
                FeatherIcons.creditCard,
                color: theme.primaryColor,
              ),
              title: Text(
                AppLocalizations.of(context)!.payment_method,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              onTap: () => Get.toNamed<dynamic>(
                BellcommerceRoutes.notification,
              ),
              leading: Icon(
                FeatherIcons.bell,
                color: theme.primaryColor,
              ),
              title: Text(
                AppLocalizations.of(context)!.notification,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              leading: Icon(
                FeatherIcons.moon,
                color: theme.primaryColor,
              ),
              title: Text(
                AppLocalizations.of(context)!.dark_mode,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              trailing: Switch(
                value: context.watch<ThemeProvider>().isDarkTheme,
                activeColor: theme.primaryColor,
                onChanged: (value) {
                  context.read<ThemeProvider>().changeTheme();
                },
              ),
            ),
            ListTile(
              onTap: () => _signOutDialog(context),
              leading: Icon(
                FeatherIcons.logOut,
                color: theme.primaryColor,
              ),
              title: Text(
                AppLocalizations.of(context)!.logout,
                style: theme.textTheme.bodyMedium,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            // buildSignOut(context),
          ],
        ),
      ),
    );
  }
}
