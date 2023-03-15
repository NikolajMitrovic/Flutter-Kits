import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/evite/models/event_model.dart';
import 'package:ultimate_bundle/freebies/evite/widgets/event_card.dart';
import 'package:ultimate_bundle/freebies/evite/widgets/event_card_2.dart';

class UpComming extends StatelessWidget {
  const UpComming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: upcommingList.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final event = upcommingList[index];
        return InkWell(
          onTap: () {
            
          },
          child: event.date == 'Today'
              ? EventCard(
                  event: event,
                )
              : EventCard2(event: event),
        );
      },
    );
  }
}
