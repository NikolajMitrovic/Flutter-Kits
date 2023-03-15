import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/coffiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/coffiy/src/helpers/toast.dart';

class SocialNetworkModel {
  final String? image;
  final String? name;
  final VoidCallback? onTap;

  SocialNetworkModel({this.image, this.name, this.onTap});
}

List<SocialNetworkModel> socialNetworkList(BuildContext context) => [
  SocialNetworkModel(
    name: 'Google',
    image: CustomIcons.google,
    onTap: (){
      showToast(msg: AppLocalizations.of(context)!.google_sign_in_clicked);
    }
  ),
  SocialNetworkModel(
    name: 'Facebook',
    image: CustomIcons.facebook,
    onTap: (){
      showToast(msg: AppLocalizations.of(context)!.facebook_sign_in_clicked);
    }
  ),
  SocialNetworkModel(
    name: 'Twitter',
    image: CustomIcons.twitter,
    onTap: (){
      showToast(msg: AppLocalizations.of(context)!.twitter_sign_in_clicked);
    }
  ),
];
