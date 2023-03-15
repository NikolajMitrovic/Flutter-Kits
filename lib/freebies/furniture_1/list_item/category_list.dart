import 'package:ultimate_bundle/freebies/furniture_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/furniture_1/models/category_model.dart';

class CategoryList {
  static List<CategoryModel> topCategoryList = [
    CategoryModel(
      name: 'Chair',
      icon: CustomIcon.chair,
    ),
    CategoryModel(
      name: 'Sofa',
      icon: CustomIcon.sofa,
    ),
    CategoryModel(
      name: 'Dinner',
      icon: CustomIcon.dinner,
    ),
    CategoryModel(
      name: 'Drawers',
      icon: CustomIcon.drawers,
    ),
  ];

  static List<CategoryModel> categoryList = [
    CategoryModel(
      name: 'Chair',
      image:
          'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/images/233/0723346_PE733927_S4.jpg',
      totalItem: 120,
    ),
    CategoryModel(
      name: 'Sofa',
      image:
          'https://images.unsplash.com/photo-1567016432779-094069958ea5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      totalItem: 230,
    ),
    CategoryModel(
      name: 'Dinner',
      image:
          'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/images/199/0719960_PE732334_S4.jpg',
      totalItem: 110,
    ),
    CategoryModel(
      name: 'Drawers',
      image:
          'https://d2xjmi1k71iy2m.cloudfront.net/dairyfarm/id/images/486/0848654_PE564139_S4.jpg',
      totalItem: 220,
    ),
  ];
}
