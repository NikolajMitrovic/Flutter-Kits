part of '../profile_page.dart';

class CoffiyProfileScreen extends StatelessWidget {
  const CoffiyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mode = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.profile,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(CoffiyRoutes.setting),
            icon: const Icon(IconlyBold.setting),
            color: (mode.isDarkTheme == true)
                ? ColorDark.fontTitle
                : ColorLight.fontTitle,
          ),
        ],
      ),
      body: Column(
        children: [
          _BuildListTile(
            icon: IconlyLight.profile,
            label: AppLocalizations.of(context)!.full_name,
            value: 'Jessica Veranda',
            onTap: () {},
          ),
          _BuildListTile(
            icon: IconlyLight.call,
            label: AppLocalizations.of(context)!.phone_number,
            value: '+60134589525',
            onTap: () {},
          ),
          _BuildListTile(
            icon: IconlyLight.message,
            label: AppLocalizations.of(context)!.email,
            value: 'veranda@mail.com',
            onTap: () {},
          ),
          _BuildListTile(
            icon: IconlyLight.location,
            label: AppLocalizations.of(context)!.address,
            value: '800 Monroe Street, Houston, Texas, 77040',
            onTap: () {},
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () => Get.toNamed<dynamic>(CoffiyRoutes.signIn),
            label: AppLocalizations.of(context)!.logout,
            margin: const EdgeInsets.symmetric(horizontal: Const.margin),
          ),
        ],
      ),
    );
  }
}
