import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/models/cake.dart';

class CakeCard extends StatelessWidget {
  final CakeModel cake;

  const CakeCard({Key? key, required this.cake}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(left: 18),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            bottom: 20,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                margin:const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          child: Text(
                            cake.title??'',
                            overflow: TextOverflow.ellipsis,
                            style: kTitleStyle,
                          ),
                        ),
                      const  Spacer(),
                        Text('\$${cake.price}', style: kPriceTitleStyle),
                      ],
                    ),
                  const  SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          child: Text(
                            cake.bakery??'',
                            overflow: TextOverflow.ellipsis,
                            style: kSubtitleStyle,
                          ),
                        ),
                        const Spacer(),
                        Text('\$${cake.price}', style: kPriceSubtitleStyle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 20,
            right: 20,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(cake.image??''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
