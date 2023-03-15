import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/models/product_model.dart';
import 'package:ultimate_bundle/freebies/ecommerce_1/widgets/custom_network_image.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8),
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          margin: const EdgeInsets.all(12),
          height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CustomNetworkImage(
                    image: product.images!.first,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.width / 2.0,
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor : theme.cardColor.withOpacity(.4),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(FeatherIcons.heart),
                        color: Colors.red,
                        iconSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              const Spacer(),
              AutoSizeText(
                product.name!,
                style: theme.textTheme.headlineMedium,
                maxLines: 1,
              ),
              const SizedBox(height: 8),
              AutoSizeText(
                NumberFormat.currency(
                  symbol: r'$',
                ).format(product.price),
                style: theme.textTheme.bodyMedium,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
