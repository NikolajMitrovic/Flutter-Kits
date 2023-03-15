import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/empty_widget.dart';

class FoodiyOrderSuccessScreen extends StatelessWidget {
  const FoodiyOrderSuccessScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyWidget(
        image: Const.illustration2,
        title: AppLocalizations.of(context)!.ouch_hungry,
        subtitle: AppLocalizations.of(context)!
            .just_stay_at_home_while_we_are_preparing_your_best_foods,
        labelButton: AppLocalizations.of(context)!.order_other_food,
        secondaryLabelButton: AppLocalizations.of(context)!.view_my_order,
        secondaryOnTap: () => Get.offAllNamed<dynamic>(FoodiyRoutes.order),
      ),
    );
  }
}
