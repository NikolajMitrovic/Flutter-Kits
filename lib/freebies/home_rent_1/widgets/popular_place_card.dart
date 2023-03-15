import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/helpers/colors.dart';
import 'package:ultimate_bundle/freebies/home_rent_1/models/room_model.dart';


class PopularPlaceCard extends StatelessWidget {
  final RoomModel room;

  const PopularPlaceCard({Key? key,required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 12,
                  bottom: 12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: OctoImage(
                      image: CachedNetworkImageProvider(room.image??''),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: kBlueColor,

                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: kBackgroundLightColor,
                          ),
                          const SizedBox(width: 3),
                          Text(room.rating!,
                              style: theme.textTheme.headlineSmall!
                                  .copyWith(color: kPrimaryDarkColor))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(room.name!,
                      style: theme.textTheme.displaySmall, maxLines: 1),
                  Text(room.place!, style: theme.textTheme.titleSmall),
                  Row(
                    children: <Widget>[
                      Text('${room.width}ft | ${room.height}ft',
                          maxLines: 1, style: theme.textTheme.titleMedium),
                      const Spacer(),
                      Text(
                        '\$ ${room.price}.00',
                        style: theme.textTheme.displaySmall!.copyWith(color: kBlueColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
