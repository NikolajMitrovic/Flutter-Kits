import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/logitech_store/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/logitech_store/models/category.dart';
import 'package:ultimate_bundle/freebies/logitech_store/models/product.dart';
import 'package:ultimate_bundle/freebies/logitech_store/widgets/category_card.dart';
import 'package:ultimate_bundle/freebies/logitech_store/widgets/category_card2.dart';
import 'package:ultimate_bundle/freebies/logitech_store/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : kWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor : kWhiteColor,
        leading: Padding(
          padding: const EdgeInsets.all(18),
          child: SvgPicture.asset(
            CustomIcons.drawer,
            width: 15,
            color: kBlackColor,
          ),
        ),
        actions: [
          SvgPicture.asset(
            CustomIcons.search,
            width: 25,
            color: kBlackColor,
          ),
          const SizedBox(width: 18),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Text(
              'LIFE IS MORE FUN\nWHEN YOU PLAY',
              style: kH1Style,
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return index == 0
                      ? CategoryCard(
                          category: category,
                        )
                      : CategoryCard2(
                          category: category,
                        );
                },
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                children: [
                  Text('Products', style: kH2Style),
                  const Spacer(),
                  Text('See all', style: kH2SubtitleStyle),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: ListView.builder(
                itemCount: recommendedList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  final product = recommendedList[index];
                  return InkWell(
                    onTap: () {},
                    child: ProductCard(product: product),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
