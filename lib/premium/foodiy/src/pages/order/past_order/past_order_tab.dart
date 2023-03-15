import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/order_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/order_food_card.dart';

class PastOrderTab extends StatelessWidget {
  const PastOrderTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return (mockPastOrderList.isEmpty)
        ? Center(
            child: Column(children: [
            Image.asset(Const.empty,
                width: MediaQuery.of(context).size.width / 2),
            Text(AppLocalizations.of(context)!.ouch_hungry,
                style: theme.textTheme.displaySmall),
            const SizedBox(height: 15),
            Text(
              AppLocalizations.of(context)!
                  .seems_like_you_have_not_have_an_in_progress_order_yet,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ]))
        : ListView.builder(
            itemCount: mockPastOrderList.length,
            shrinkWrap: true,
            reverse: true,
            itemBuilder: (context, index) {
              final order = mockPastOrderList[index];
              return OrderFoodCard(order: order);
            },
          );
  }
}
