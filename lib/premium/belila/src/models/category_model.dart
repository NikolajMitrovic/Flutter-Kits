import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/constants.dart';

class CategoryModel {
  int? id;
  String? name;
  String? image;
  String? icon;
  VoidCallback? onTap;

  CategoryModel({
    this.id,
    this.name,
    this.image,
    this.icon,
    this.onTap,
  });
}

List<CategoryModel> topCategoryList(BuildContext context) => [
      CategoryModel(
        name: AppLocalizations.of(context)!.food_and_drink,
        icon: CustomIcons.food,
        image:
            'https://images.unsplash.com/photo-1476718406336-bb5a9690ee2a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.dress,
        icon: CustomIcons.dress,
        image:
            'https://images.unsplash.com/photo-1566174053879-31528523f8ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZHJlc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.makeup,
        icon: CustomIcons.makeUp,
        image:
            'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFrZSUyMHVwfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.tshirt,
        icon: CustomIcons.tShirt,
        image:
            'https://images.unsplash.com/photo-1527719327859-c6ce80353573?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dHNoaXJ0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.shoes,
        icon: CustomIcons.shoes,
        image: '',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.travel,
        icon: CustomIcons.travel,
        image: '',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.mom_and_baby,
        icon: CustomIcons.baby,
        image: '',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
      CategoryModel(
        name: AppLocalizations.of(context)!.other,
        icon: CustomIcons.more,
        image: '',
        onTap: ()=> Get.toNamed<dynamic>(BelilaRoutes.productBrowse),
      ),
    ];
