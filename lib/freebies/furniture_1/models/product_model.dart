import 'package:flutter/material.dart';

class ProductModel {
  final String? name;
  final int? price;
  final double? rating;
  final List<Color>? colorsType = const [
    Color(0xFF89675E),
    Color(0xFF244395),
    Color(0xFFD99B61),
    Color(0xFFD4D7D9),
    Color(0xFF0B2E40),
  ];
  final String? description;
  final List<String>? categories;
  final List<String>? tags;
  final List<String>? images;

  ProductModel({
    this.name,
    this.price,
    this.rating,
    this.description,
    this.categories,
    this.tags,
    this.images,
  });
}
