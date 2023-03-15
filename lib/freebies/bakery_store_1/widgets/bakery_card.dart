import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/models/bakery.dart';

class BakeryCard extends StatelessWidget {
  final BakeryModel bakery;

  const BakeryCard({Key? key, required this.bakery}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      elevation: 7,
      child: ListTile(
        leading: Container(
          width: 70,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: CachedNetworkImageProvider(bakery.image ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(bakery.name ?? '', style: kTitleStyle),
        subtitle: Row(
          children: <Widget>[
            const Icon(
              Icons.access_time,
              size: 14,
              color: Colors.black54,
            ),
            Text(
              ' ${bakery.open} am - ${bakery.close} pm',
              style: kSubtitleStyle.copyWith(fontSize: 12),
            ),
            const Spacer(),
            const Icon(
              Icons.location_on,
              size: 14,
              color: Colors.black54,
            ),
            Text(
              '${bakery.distance} km',
              style: kSubtitleStyle.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
