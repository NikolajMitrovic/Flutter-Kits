part of '../setting_page.dart';

class BelilaSettingScreen extends StatelessWidget {
  const BelilaSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.setting,
      ),
      body: Column(
        children: [
          ShakeTransition(
            duration: const Duration(milliseconds: 500),
            child: _BuildListTile(
              title: AppLocalizations.of(context)!.edit_profile,
              icon: FeatherIcons.edit,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.profileEdit),
            ),
          ),
          const SizedBox(height: Const.space12),
          ShakeTransition(
            duration: const Duration(milliseconds: 600),
            child: _BuildListTile(
              title: AppLocalizations.of(context)!.address,
              icon: FeatherIcons.mapPin,
              onTap: () => Get.toNamed<dynamic>(
                BelilaRoutes.address,
                arguments: AddressArgument(),
              ),
            ),
          ),
          const SizedBox(height: Const.space12),
          ShakeTransition(
            duration: const Duration(milliseconds: 700),
            child: _BuildListTile(
              title: AppLocalizations.of(context)!.change_password,
              icon: FeatherIcons.lock,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.changePassword),
              // onTap: () => Get.toNamed(
              //   setPassword == 'true'
              //       ? Routes.changePassword
              //       : Routes.setPassword,
              // ),
            ),
          ),
          const SizedBox(height: Const.space12),
          ShakeTransition(
            duration: const Duration(milliseconds: 800),
            child: _BuildListTile(
              title: AppLocalizations.of(context)!.dark_theme,
              icon: FeatherIcons.moon,
              isSwitch: true,
            ),
          ),
        ],
      ),
    );
  }
}
