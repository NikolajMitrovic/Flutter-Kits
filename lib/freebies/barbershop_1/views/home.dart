import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/models/barbershop_model.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/models/category_model.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/widgets/barbershop.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/widgets/category_card.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/widgets/custom_list_tile.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/widgets/oval_bottom_border_clipper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                width: double.infinity,
                height: 250,
                padding: const EdgeInsets.only(bottom: 50),
                decoration: const BoxDecoration(
                  color: kYellow,
                  image: DecorationImage(
                    image: CachedNetworkImageProvider('https://i.pinimg.com/564x/87/f8/c9/87f8c96606671217b270803fa183e7d6.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(
                      backgroundColor : Colors.black12.withOpacity(0),
                      elevation: 0,
                      leading: const Icon(Icons.menu),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.filter_list),
                          onPressed: () {},
                        )
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text(
                        'Find and book best sertices',
                        style: kTitleStyle.copyWith(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 18),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withOpacity(.9),
                      ),
                      child: TextField(
                        cursorColor: kBlack,
                        decoration: InputDecoration(
                          hintText: 'Search Saloon, Spa and Barber',
                          hintStyle: kHintStyle,
                          border: InputBorder.none,
                          icon: const Icon(
                            Icons.search,
                            color: kGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            const CustomListTile(title: 'Top Categories'),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final category = categoryList[index];
                  return CategoryCard(category: category);
                },
              ),
            ),
            const SizedBox(height: 30),
            const CustomListTile(title: 'Best Barbershop'),
            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                itemCount: bestList.length,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final barbershop = bestList[index];
                  return BarbershopCard(barbershop: barbershop);
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
