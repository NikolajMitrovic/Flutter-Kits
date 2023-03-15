import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/logitech_store/helpers/constants.dart'; 
import 'package:ultimate_bundle/freebies/logitech_store/models/category.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel? category;

  const CategoryCard({Key? key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, right: 12),
      child: Container(
        width: 90,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kBlueColor,
          boxShadow: [
            BoxShadow(
              color: kBlueColor.withOpacity(.2),
              offset: const Offset(2, 5),
              blurRadius: 8,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor : Colors.white,
              child: SvgPicture.asset(
                category!.icon!,
                width: 20,
              ),
            ),
            const Spacer(),
            Text(
              category!.title!,
              style: kCategoryTextStyle.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
