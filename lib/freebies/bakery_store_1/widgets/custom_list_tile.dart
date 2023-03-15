import 'package:flutter/material.dart';
import 'package:ultimate_bundle/freebies/bakery_store_1/helpers/constants.dart';

class CustomListTile extends StatelessWidget {
  final String title;

  const CustomListTile({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: kTitleStyle),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'All',
              style: kTitleStyle.copyWith(fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
