import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/helpers/constants.dart';

class CategoryModel {
  final int? id;
  final String? name;
  final String? icon;

  CategoryModel({this.id, this.name, this.icon});
}

List<CategoryModel> categoryList(BuildContext context) => [
  CategoryModel(
    id: 1,
    name:AppLocalizations.of(context)!.t_shirt,
    icon: Assets.shirt,
  ),
  CategoryModel(
    id: 2,
    name:AppLocalizations.of(context)!.dress,
    icon: Assets.dress,
  ),
  CategoryModel(
    id: 3,
    name:AppLocalizations.of(context)!.man_bag,
    icon: Assets.bag,
  ),
  CategoryModel(
    id: 4,
    name:AppLocalizations.of(context)!.man_pants,
    icon: Assets.manPants,
  ),
  CategoryModel(
    id: 5,
    name:AppLocalizations.of(context)!.man_shoes,
    icon: Assets.manShoes,
  ),
  CategoryModel(
    id: 6,
    name:AppLocalizations.of(context)!.man_underwear,
    icon: Assets.manUnderwear,
  ),
  CategoryModel(
    id: 8,
    name:AppLocalizations.of(context)!.woman_bag,
    icon: Assets.womanBag,
  ),
  CategoryModel(
    id: 9,
    name:AppLocalizations.of(context)!.woman_pants,
    icon: Assets.womanPants,
  ),
  CategoryModel(
    id: 10,
    name:AppLocalizations.of(context)!.woman_shoes,
    icon: Assets.womanShoes,
  ),
  CategoryModel(
    id: 11,
    name:AppLocalizations.of(context)!.woman_tshirt,
    icon: Assets.womanTshirt,
  ),
  CategoryModel(
    id: 12,
    name:AppLocalizations.of(context)!.bikini,
    icon: Assets.bikini,
  ),
  CategoryModel(
    id: 13,
    name:AppLocalizations.of(context)!.skirt,
    icon: Assets.skirt,
  ),
];
