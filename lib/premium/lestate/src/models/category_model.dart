import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/lestate/src/helpers/constants.dart';

class CategoryModel{
  final String? name;
  final String? icon;

  CategoryModel({this.name, this.icon});
}

List<CategoryModel> categoryList(BuildContext context) => [
  CategoryModel(
    name:AppLocalizations.of(context)!.apart,
    icon: CustomIcons.apart,
  ),
  CategoryModel(
    name:AppLocalizations.of(context)!.hotel,
    icon: CustomIcons.hotel,
  ),
  CategoryModel(
    name:AppLocalizations.of(context)!.house,
    icon: CustomIcons.house,
  ),
  CategoryModel(
    name:AppLocalizations.of(context)!.office,
    icon: CustomIcons.office,
  ),

];
