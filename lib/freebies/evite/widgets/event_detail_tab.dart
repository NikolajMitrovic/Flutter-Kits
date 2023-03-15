import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_bundle/freebies/evite/helpers/constants.dart';

class EventDetailTab extends StatelessWidget {
  const EventDetailTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          ListTile(
            leading: const CircleAvatar(
              radius: 26,
              backgroundImage: CachedNetworkImageProvider('https://i.pinimg.com/564x/4f/61/09/4f6109d6b1ed79d23e9b492ba6dedec1.jpg'),
            ),
            title: Text('Jessica Veranda', style: kTitleStyle),
            subtitle: Text('Host', style: kSubtitleStyle),
          ),
          const Divider(color: kOrangeColor),
          ListTile(
            leading: SvgPicture.asset(
              CustomIcons.location,
              width: 25,
              color: kOrangeColor,
            ),
            title: Text('48 Cambridge Street CLARENDON 2756 New South Wales',
                style: kSubtitleStyle.copyWith(color: Colors.black45)),
          ),
          const Divider(color: kOrangeColor),
          ListTile(
            leading: SvgPicture.asset(
             CustomIcons.menu,
              width: 25,
              color: kOrangeColor,
            ),
            title: Text('Snaks a buffet and drinks will be provided',
                style: kSubtitleStyle.copyWith(color: Colors.black45)),
          ),
          const Divider(color: kOrangeColor),
          ListTile(
            leading: SvgPicture.asset(
             CustomIcons.gift,
              width: 25,
              color: kOrangeColor,
            ),
            title: Text('No presents, just your presence',
                style: kSubtitleStyle.copyWith(color: Colors.black45)),
          ),
          const Divider(color: kOrangeColor),
        ],
      ),
    );
  }
}
