import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:ultimate_bundle/freebies/logitech_store/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/logitech_store/models/product.dart';

class ProductCard extends StatelessWidget {
  final ProductModel? product;

  const ProductCard({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: kBlack2Color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(product!.name!, style: kTitleStyle),
          ),
          Expanded(
            child: Center(
              child: OctoImage(
                image: CachedNetworkImageProvider(
                  product!.image!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text('Price', style: kH3Style),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: r'$ ', style: kTitleStyle.copyWith(fontSize: 13)),
                TextSpan(text: product!.price, style: kTitleStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
