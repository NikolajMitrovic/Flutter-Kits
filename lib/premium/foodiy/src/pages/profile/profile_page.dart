import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/custom_elevated_button.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FoodiyProfileScreen extends StatelessWidget {
  
  const FoodiyProfileScreen({Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: themeProv.isDarkTheme ? ColorDark.card : Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Const.margin),
                    child: IconButton(
                      icon: const Icon(FeatherIcons.settings),
                      color:
                          themeProv.isDarkTheme? Colors.white : Colors.black,
                      onPressed: () {
                        Get.toNamed<dynamic>(FoodiyRoutes.settings);
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: CachedNetworkImageProvider(
                    Const.mockProfileImage,
                  ),
                  backgroundColor : Colors.transparent,
                ),
                const SizedBox(height: 15),
                Text('Jessica Veranda', style: theme.textTheme.displayLarge),
                const SizedBox(height: 5),
                Text('Jakarta Pusat', style: theme.textTheme.titleMedium),
                const SizedBox(height: 50),
                buildProfileItem(context,
                    title: AppLocalizations.of(context)!.email_address,
                    trailing: 'jscvrnd19@gmail.com'),
                const SizedBox(height: 5),
                Divider(
                  thickness: 2,
                  color: theme.backgroundColor ,
                ),
                const SizedBox(height: 5),
                buildProfileItem(context,
                    title: AppLocalizations.of(context)!.phone_number, trailing: '+6281345071707'),
                const SizedBox(height: 5),
                Divider(
                  thickness: 2,
                  color: theme.backgroundColor ,
                ),
                const SizedBox(height: 5),
                buildProfileItem(context,
                    title:AppLocalizations.of(context)!.address, trailing: 'Jl. S. Parman'),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            color: themeProv.isDarkTheme? ColorDark.card : Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 5),
                buildSettingApp(
                  context,
                  icon: FeatherIcons.moon,
                  title: AppLocalizations.of(context)!.dark_mode,
                  trailing: Switch(
                    value: themeProv.isDarkTheme,
                    activeColor: theme.primaryColor,
                    onChanged: (val) {
                      themeProv.changeTheme();
                    },
                  ),
                ),
                const SizedBox(height: 15),
                buildSettingApp(context,
                    icon: FeatherIcons.globe,
                    title:AppLocalizations.of(context)!.change_language,
                    trailing: const Icon(Icons.arrow_forward_ios), onTap: () {
                  Get.toNamed<dynamic>(FoodiyRoutes.changeLanguage);
                }),
                const SizedBox(height: 15),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(Const.margin),
            child: CustomElevatedButton(
                label:AppLocalizations.of(context)!.log_out,
                onTap: () {
                  showDialog<dynamic>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          backgroundColor : themeProv.isDarkTheme? ColorDark.card
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          title: Text(AppLocalizations.of(context)!.are_you_sure,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.displaySmall),
                          content: Text(AppLocalizations.of(context)!.if_you_select_log_out_it_will_return_to_the_login_screen,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Get.offAllNamed<dynamic>(FoodiyRoutes.signin);
                              },
                              child: Text(AppLocalizations.of(context)!.yes,
                                  style: theme.textTheme.displaySmall!
                                      .copyWith(color: theme.primaryColor)),
                            ),
                            TextButton(
                              onPressed: Get.back,
                              child: Text(AppLocalizations.of(context)!.no,
                                  style: theme.textTheme.bodyMedium),
                            ),
                          ]);
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }

  Container buildProfileItem(
    BuildContext context, {
    required String title,
    required String trailing,
  }) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(title, style: theme.textTheme.titleSmall),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(trailing, style: theme.textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }

  InkWell buildSettingApp(
    BuildContext context, {
    IconData? icon,
    required String title,
    Widget? trailing,
    void Function()? onTap,
  }) {
    final themeProv = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Row(
          children: [
            Icon(
              icon,
              color: themeProv.isDarkTheme? Colors.white : Colors.black,
            ),
            const SizedBox(width: 15),
            Expanded(child: Text(title, style: theme.textTheme.bodyMedium)),
            trailing!,
          ],
        ),
      ),
    );
  }
}
