import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

import 'package:ultimate_bundle/premium/treshop/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/treshop/src/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Card(
      margin: const EdgeInsets.only(
        right: Const.space15,
        bottom: 2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(Const.radius),
        onTap: () => Get.toNamed<dynamic>(
          TreshopRoutes.allProduct,
          arguments: category.name,
        ),
        child: SizedBox(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(category.icon!),
              const SizedBox(height: Const.space8),
              AutoSizeText(
                category.name!,
                style: theme.textTheme.headlineMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
 