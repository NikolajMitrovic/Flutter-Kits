import 'dart:ui';

import 'package:ultimate_bundle/premium/barbera/src/models/service_model.dart';

class CategoryModel {
  final String? name;
  final String? icon;
  final Color? color;
  final List<ServicesModel>? services;

  CategoryModel({
    this.name,
    this.icon,
    this.color,
    this.services, 
  });
}
