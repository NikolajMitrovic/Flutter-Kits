import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/models/barbershop_model.dart';

class BarbershopCard extends StatelessWidget {
  final BarbershopModel? barbershop;

  const BarbershopCard({Key? key, this.barbershop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(left: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                image: CachedNetworkImageProvider(barbershop!.image!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 140,
                child: Text(
                  barbershop!.name!,
                  overflow: TextOverflow.ellipsis,
                  style: kTitleItem,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                size: 15,
                color: kYellow,
              ),
              Text(barbershop!.rating!, style: kTitleItem),
            ],
          ),
          Text(barbershop!.address!,
              overflow: TextOverflow.ellipsis, style: kSubtitleItem),
        ],
      ),
    );
  }
}
