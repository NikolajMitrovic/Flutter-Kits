import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/evite/models/event_model.dart';
import 'package:ultimate_bundle/freebies/evite/widgets/event_card.dart';
import 'package:ultimate_bundle/freebies/evite/widgets/event_card_2.dart';

class Past extends StatelessWidget {
  const Past({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pastList.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final event = pastList[index];
        return event.date == 'Today'
            ? EventCard(
                event: event,
              )
            : EventCard2(event: event);
      },
    );
  }
}
