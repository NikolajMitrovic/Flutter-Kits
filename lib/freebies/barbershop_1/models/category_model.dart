import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/helpers/constants.dart';

class CategoryModel {
  final String? icon;
  final String? title;
  final String? subtitle;
  final Color? color;
  CategoryModel({this.icon, this.subtitle, this.title, this.color});
}

List<CategoryModel> categoryList = [
  CategoryModel(
    icon: CustomIcons.salon,
    title: 'Saloon',
    subtitle: '5',
    color: kPurple,
  ),
  CategoryModel(
    icon: CustomIcons.haircut,
    title: 'Haircut',
    subtitle: '59',
    color: kYellow,
  ),
  CategoryModel(
    icon: CustomIcons.palor,
    title: 'Palor',
    subtitle: '23',
    color: kGreen,
  ),
  CategoryModel(
    icon: CustomIcons.shampoo,
    title: 'Shampoo',
    subtitle: '55',
    color: kPink,
  ),
  CategoryModel(
    icon: CustomIcons.spa,
    title: 'Spa',
    subtitle: '15',
    color: kIndigo,
  ),
];
