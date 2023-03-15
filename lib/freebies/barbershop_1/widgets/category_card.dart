import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel? category;

  const CategoryCard({Key? key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor : category!.color,
            child: SvgPicture.asset(
              category!.icon!,
              color: Colors.white,
              width: 25,
            ),
          ),
          Text(category!.title!, style: kTitleItem),
          Text(
            '${category!.subtitle} Places',
            style: kSubtitleItem,
          ),
        ],
      ),
    );
  }
}
