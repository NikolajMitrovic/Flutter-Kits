import 'package:ultimate_bundle/freebies/bakery_store_1/helpers/constants.dart';

class CategoryModel {
  final String? image;
  CategoryModel({this.image});
}

List<CategoryModel> categoryList = [
  CategoryModel(image: CustomIcons.birthdaycake),
  CategoryModel(image: CustomIcons.birthday),
  CategoryModel(image: CustomIcons.bread),
  CategoryModel(image: CustomIcons.bread1),
  CategoryModel(image: CustomIcons.dessert),
  CategoryModel(image: CustomIcons.dessert1),
  CategoryModel(image: CustomIcons.donut),
  CategoryModel(image: CustomIcons.sweet),
];
