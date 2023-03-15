import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/order_model.dart';

class OrderFoodCard extends StatelessWidget {
  final OrderModel order;

  const OrderFoodCard({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () => Get.toNamed<dynamic>(FoodiyRoutes.orderdetail, arguments: order),
        borderRadius: BorderRadius.circular(8),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(order.food!.imagePath!),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.food!.name!,
                        style: theme.textTheme.displaySmall,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text('${order.food!.quantity} item',
                              style: theme.textTheme.titleMedium),
                          Text(' • ', style: theme.textTheme.titleMedium),
                          Text(
                            NumberFormat.currency(
                              symbol: r'$',
                              decimalDigits: 0,
                              locale: 'en-EN',
                            ).format(order.food!.price),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.titleMedium,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        (order.orderStatus == OrderStatus.pending)
                            ? AppLocalizations.of(context)!.wait_for_payment
                            : (order.orderStatus == OrderStatus.onDelivery)
                                ? AppLocalizations.of(context)!.on_delivery
                                : (order.orderStatus == OrderStatus.success)
                                    ? AppLocalizations.of(context)!.success
                                    : (order.orderStatus ==
                                            OrderStatus.cancelled)
                                        ? AppLocalizations.of(context)!.cancelled
                                        : AppLocalizations.of(context)!.pending,
                        style: theme.textTheme.titleSmall!.copyWith(
                            color: (order.orderStatus == OrderStatus.pending)
                                ? ColorLight.warning
                                : (order.orderStatus == OrderStatus.onDelivery)
                                    ? ColorLight.success
                                    : (order.orderStatus == OrderStatus.success)
                                        ? ColorLight.success
                                        : (order.orderStatus ==
                                                OrderStatus.cancelled)
                                            ? ColorLight.error
                                            : ColorLight.error),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
