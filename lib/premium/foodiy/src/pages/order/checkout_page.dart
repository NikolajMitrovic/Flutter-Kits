import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/food_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/order_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/custom_elevated_button.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FoodiyCheckoutScreen extends StatelessWidget {
  const FoodiyCheckoutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final food = Get.arguments as FoodModel;
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 18,
              backgroundColor : Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 18,
                  onPressed: backOnTap,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: themeProv.isDarkTheme? ColorDark.card : Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context)!.item_ordered,
                      style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(food.imagePath!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food.name!,
                              maxLines: 2,
                              style: theme.textTheme.displaySmall!
                                  .copyWith(height: 1),
                            ),
                            const SizedBox(height: 5),
                            Text(
                                NumberFormat.currency(
                                  symbol: r'$',
                                  decimalDigits: 0,
                                  locale: Const.localeUS,
                                ).format(food.quantity * food.price!),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.headlineMedium!
                                    .copyWith(color: theme.primaryColor)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        '${'${food.quantity} '}${AppLocalizations.of(context)!.items}',
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(AppLocalizations.of(context)!.detail_transaction,
                      style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 12),
                  buildCheckoutDetail(
                    theme,
                    title: food.name!,
                    trailing: food.quantity * food.price!,
                  ),
                  const SizedBox(height: 5),
                  buildCheckoutDetail(
                    theme,
                    title: AppLocalizations.of(context)!.shipping_cost,
                    trailing: 5,
                  ),
                  const SizedBox(height: 5),
                  buildCheckoutDetail(
                    theme,
                    title: AppLocalizations.of(context)!.total,
                    trailing: food.quantity * food.price! + 5,
                    isTotal: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: themeProv.isDarkTheme? ColorDark.card : Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${AppLocalizations.of(context)!.deliver_to}:',
                      style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  buildUserDetail(theme,
                      title: AppLocalizations.of(context)!.name,
                      trailing: 'Jessica Veranda'),
                  const SizedBox(height: 5),
                  buildUserDetail(theme,
                      title: AppLocalizations.of(context)!.phone_number,
                      trailing: '+6281345071707'),
                  const SizedBox(height: 5),
                  buildUserDetail(theme,
                      title: AppLocalizations.of(context)!.address,
                      trailing: 'Jl. S. Parman'),
                  const SizedBox(height: 5),
                  buildUserDetail(theme,
                      title: AppLocalizations.of(context)!.city,
                      trailing: 'Jakarta Pusat'),
                ],
              ),
            ),
            const Spacer(),
            CustomElevatedButton(
              onTap: checkoutOnTap,
              label: AppLocalizations.of(context)!.checkout_now,
            ),
            const SizedBox(height: Const.margin),
          ],
        ),
      ),
    );
  }

  Row buildCheckoutDetail(ThemeData theme,
      {required String title, int? trailing, bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: theme.textTheme.titleMedium),
        Text(
          NumberFormat.currency(
            symbol: r'$',
            decimalDigits: 0,
            locale: Const.localeUS,
          ).format(trailing),
          overflow: TextOverflow.clip,
          textAlign: TextAlign.left,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: isTotal ? theme.primaryColor : null,
            fontWeight: isTotal ? FontWeight.bold : null,
          ),
        ),
      ],
    );
  }

  Row buildUserDetail(ThemeData theme,
      {required String title, required String trailing}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: theme.textTheme.titleMedium),
        Text(trailing, style: theme.textTheme.bodyLarge),
      ],
    );
  }

  void backOnTap() {
    Get.back<dynamic>();
  }

  void checkoutOnTap() {
    final food = Get.arguments as FoodModel;
    final randomId = Random();
    Get.offNamed<dynamic>(FoodiyRoutes.ordersuccess);
    mockOrderList.add(
      OrderModel(
        id: randomId.nextInt(1000),
        food: food,
        orderTime: DateTime.now(),
      ),
    );
  }
}
