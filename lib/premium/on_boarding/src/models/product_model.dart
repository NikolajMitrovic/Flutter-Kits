import 'package:flutter/cupertino.dart';

class ProductModel {
  final String? image;
  final String? title;
  final VoidCallback? onTap;

  ProductModel({this.image, this.title, this.onTap});
}
