import 'package:flutter/material.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/food_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/food_card.dart';

class RecommendedTab extends StatelessWidget {
  
  const RecommendedTab({Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
   const SizedBox(height: 20),
    SizedBox(
      width: double.infinity,
      height: 270,
      child: ListView.builder(
        itemCount: mockFoodList.length,
        scrollDirection: Axis.horizontal,
        physics:const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding:const EdgeInsets.only(left: Const.margin),
        itemBuilder: (context, index) {
          final food = mockFoodList[index];
          return FoodCard(food: food);
        },
      ),
    )
      ],
    );
  }
}
