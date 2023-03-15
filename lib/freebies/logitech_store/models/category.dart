import 'package:ultimate_bundle/freebies/logitech_store/helpers/constants.dart';

class CategoryModel {
  final String? title;
  final String? icon;
  CategoryModel({this.icon, this.title});
}

List<CategoryModel> categoryList = [
  CategoryModel(
    title: 'Mice',
    icon: CustomIcons.mice,
  ),
  CategoryModel(
    title: 'Keyboard',
    icon: CustomIcons.keyboard,
  ),
  CategoryModel(
    title: 'Audio',
    icon: CustomIcons.audio,
  ),
  CategoryModel(
    title: 'Gamepad',
    icon: CustomIcons.gamepad,
  ),
];
