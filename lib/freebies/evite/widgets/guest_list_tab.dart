import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/evite/helpers/constants.dart';
import 'package:ultimate_bundle/freebies/evite/models/event_model.dart';

class GuestListTab extends StatelessWidget {
  const GuestListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friendList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final friend = friendList[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 27,
            backgroundImage: CachedNetworkImageProvider(friend.image!),
          ),
          title: Text(friend.name!, style: kTitleStyle),
          subtitle: Text(
            'Joined in ${friend.date}',
            style: kSubtitleStyle,
          ),
        );
      },
    );
  }
}
