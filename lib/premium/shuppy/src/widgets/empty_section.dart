import 'package:flutter/material.dart';

import 'package:ultimate_bundle/premium/shuppy/src/helpers/constants.dart';

class EmptySection extends StatelessWidget {
  final String? title;
  final String? image;
  const EmptySection({
    Key? key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image!,
              width: MediaQuery.of(context).size.width / 1.5,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15),
            Text(
              title!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
