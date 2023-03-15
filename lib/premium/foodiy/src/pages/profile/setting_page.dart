import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';

class FoodiySettingScreen extends StatefulWidget {
  
  const FoodiySettingScreen({Key? key }) : super(key: key);
  @override
  State<FoodiySettingScreen> createState() => _FoodiySettingScreenState();
}

class _FoodiySettingScreenState extends State<FoodiySettingScreen> {
  TextEditingController? _fullNameCtrl;
  TextEditingController? _emailCtrl;
  TextEditingController? _addressCtrl;
  TextEditingController? _cityCtrl;

  File? _file;

  @override
  void initState() {
    super.initState();
    _fullNameCtrl = TextEditingController(text: 'Jessica Veranda');
    _emailCtrl = TextEditingController(text: 'jscvrnd19@gmail.com');
    _addressCtrl = TextEditingController(text: 'Jl. S. Parman');
    _cityCtrl = TextEditingController(text: 'Jakarta Pusat');
  }

  @override
  void dispose() {
    _fullNameCtrl!.dispose();
    _emailCtrl!.dispose();
    _addressCtrl!.dispose();
    _cityCtrl!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: buildAppBar(theme),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CircleAvatar(
                      backgroundImage: ((_file == null)
                          ? const CachedNetworkImageProvider(
                              Const.mockProfileImage,
                            )
                          : FileImage(_file!)) as ImageProvider<Object>?,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: getImage,
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor : theme.primaryColor,
                        child: const Icon(
                          FeatherIcons.edit2,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildProfileItem(
              context,
              title: AppLocalizations.of(context)!.full_name,
              trailing: TextField(
                controller: _fullNameCtrl,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enter_your_full_name,
                ),
              ),
            ),
            const SizedBox(height: 8),
            buildProfileItem(
              context,
              title: AppLocalizations.of(context)!.email_address,
              trailing: TextField(
                controller: _emailCtrl,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enter_your_email_address,
                ),
              ),
            ),
            const SizedBox(height: 8),
            buildProfileItem(
              context,
              title: AppLocalizations.of(context)!.address,
              trailing: TextField(
                controller: _addressCtrl,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enter_your_address,
                ),
              ),
            ),
            const SizedBox(height: 8),
            buildProfileItem(
              context,
              title:AppLocalizations.of(context)!.city,
              trailing: TextField(
                controller: _cityCtrl,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.enter_your_city,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildProfileItem(BuildContext context,
      {required String title, required Widget trailing}) {
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
            child: trailing,
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(ThemeData theme) {
    return AppBar(
      backgroundColor : theme.backgroundColor ,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
          radius: 18,
          backgroundColor : Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
                icon:const Icon(Icons.arrow_back_ios),
                color: Colors.white,
                iconSize: 18,
                onPressed: Get.back),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon:const Icon(Icons.done),
          color: theme.primaryColor,
          onPressed: () {
            Get.back<dynamic>();
            showToast(msg:AppLocalizations.of(context)!.successfully_changed_profile);
          },
        )
      ],
    );
  }

  Future getImage() async {
    // final pickedImage =
    //     await ImagePicker.getImage(source: ImageSource.gallery);
    // final pickedImage = ImagePicker().pickImage(source: ImageSource.gallery);
    // setState(() {
    //   if (pickedImage != null) {
    //     _file = File(pickedImage.path);
    //   } else {
    //     // print('No Image Selected');
    //   }
    // });
  }
}
