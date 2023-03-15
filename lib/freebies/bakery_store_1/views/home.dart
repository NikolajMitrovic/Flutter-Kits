import 'package:flutter/material.dart'; 
import 'package:ultimate_bundle/freebies/bakery_store_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/models/bakery.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/models/cake.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/models/category.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/widgets/bakery_card.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/widgets/cake_card.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/widgets/category_card.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/widgets/custom_list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : kBackgroundLight,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          child: Container(
              color: kBackgroundLight,
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              alignment: Alignment.centerLeft,
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 12),
                  Text('New York'),
                  Spacer(),
                  Icon(
                    Icons.shopping_basket,
                    color: Colors.grey,
                  ),
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 25),
            const CustomListTile(  title: 'Today best deals'),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 250,
              // color: Colors.black12,
              child: ListView.builder(
                itemCount: cakeList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final cake = cakeList[index];
                  return CakeCard(
                    cake: cake,
                  );
                },
              ),
            ),
            const CustomListTile(title:'Discover by category'),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return CategoryCard(category: category);
                },
              ),
            ),
            const SizedBox(height: 25),
            const CustomListTile(title:'Popular bakery'),
            const SizedBox(height: 15),
            ListView.builder(
              itemCount: bakeryList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                final bakery = bakeryList[index];
                return BakeryCard(bakery: bakery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
