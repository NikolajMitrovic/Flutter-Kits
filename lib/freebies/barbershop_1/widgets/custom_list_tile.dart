import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/barbershop_1/helpers/constants.dart';

class CustomListTile extends StatelessWidget {
  final String? title;

  const CustomListTile({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title!, style: kTitleStyle),
          Text('View all', style: kSubtitleStyle)
        ],
      ),
    );
  }
}
