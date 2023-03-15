import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/order_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/custom_elevated_button.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FoodiyOrderDetailScreen extends StatelessWidget {
  const FoodiyOrderDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);

    final order = Get.arguments as OrderModel;
    final food = order.food!;

    return Scaffold(
      body: SingleChildScrollView(
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
                  onPressed: Get.back,
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
                  Text(AppLocalizations.of(context)!.order_status,
                      style: theme.textTheme.bodyLarge),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('#${order.id}', style: theme.textTheme.titleMedium),
                      Text(
                        (order.orderStatus == OrderStatus.pending)
                            ? AppLocalizations.of(context)!.wait_for_payment
                            : (order.orderStatus == OrderStatus.onDelivery)
                                ? AppLocalizations.of(context)!.on_delivery
                                : (order.orderStatus == OrderStatus.success)
                                    ? AppLocalizations.of(context)!.success
                                    : (order.orderStatus ==
                                            OrderStatus.cancelled)
                                        ? AppLocalizations.of(context)!
                                            .cancelled
                                        : AppLocalizations.of(context)!.pending,
                        style: theme.textTheme.bodyMedium!.copyWith(
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
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (order.orderStatus == OrderStatus.cancelled)
              Container()
            else
              (order.orderStatus == OrderStatus.success)
                  ? const SizedBox()
                  : CustomElevatedButton(
                      color: ColorLight.success,
                      label: (order.orderStatus == OrderStatus.pending)
                          ? AppLocalizations.of(context)!.pay_now
                          : (order.orderStatus == OrderStatus.onDelivery)
                              ? AppLocalizations.of(context)!.order_accepted
                              : '',
                      onTap: () {
                        if (order.orderStatus == OrderStatus.pending) {
                          Get.toNamed<dynamic>(FoodiyRoutes.payment,
                              arguments: order);
                        } else if (order.orderStatus ==
                            OrderStatus.onDelivery) {
                          orderAcceptedOnTap(context);
                        }
                      },
                    ),
            const SizedBox(height: 15),
            if (order.orderStatus == OrderStatus.cancelled)
              const SizedBox()
            else
              (order.orderStatus == OrderStatus.success)
                  ? const SizedBox()
                  : CustomElevatedButton(
                      color: ColorLight.error,
                      label: AppLocalizations.of(context)!.cancel_my_order,
                      onTap: () {
                        orderCancelledOnTap(context);
                      },
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

  void orderCancelledOnTap(BuildContext context) {
    final order = Get.arguments as OrderModel;
    showDialog<dynamic>(
      context: context,
      builder: (context) {
        return ShowMyDialog(order: order);
      },
    );
  }

  void orderAcceptedOnTap(BuildContext context) {
    final order = Get.arguments as OrderModel;
    showDialog<dynamic>(
      context: context,
      builder: (context) {
        return ShowMyDialog(order: order, isConfirmation: true);
      },
    );
  }
}

class ShowMyDialog extends StatefulWidget {
  final OrderModel? order;
  final bool isConfirmation;

  const ShowMyDialog({Key? key, this.order, this.isConfirmation = false})
      : super(key: key);

  @override
  State<ShowMyDialog> createState() => _ShowMyDialogState();
}

class _ShowMyDialogState extends State<ShowMyDialog> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);
    return AlertDialog(
      backgroundColor : themeProv.isDarkTheme? ColorDark.card : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      title: Text(
        widget.isConfirmation
            ? AppLocalizations.of(context)!.the_order_has_arrived_at_your_house
            : AppLocalizations.of(context)!.are_you_sure_cancel_your_order,
        style: theme.textTheme.displaySmall,
        textAlign: TextAlign.center,
      ),
      content: Text(
        widget.isConfirmation
            ? AppLocalizations.of(context)!
                .the_order_will_be_confirmed_and_your_payment_will_be_received
            : AppLocalizations.of(context)!
                .this_will_cancel_your_order_and_you_will_not_be_able_to_modify_it_again,
        style: theme.textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              mockPastOrderList.add(
                OrderModel(
                  id: widget.order!.id,
                  food: widget.order!.food,
                  orderStatus: widget.isConfirmation
                      ? OrderStatus.success
                      : OrderStatus.cancelled,
                  orderTime: widget.order!.orderTime,
                ),
              );
              mockOrderList.removeWhere((e) => e.id == widget.order!.id);
            });
            Get.offAllNamed<dynamic>(FoodiyRoutes.order);
            showToast(
                msg: widget.isConfirmation
                    ? AppLocalizations.of(context)!
                        .thank_you_hope_you_like_our_food
                    : AppLocalizations.of(context)!
                        .your_order_has_been_cancelled);
          },
          child: Text(AppLocalizations.of(context)!.accept,
              style: theme.textTheme.headlineMedium!
                  .copyWith(color: theme.primaryColor)),
        ),
        TextButton(
          onPressed: Get.back,
          child: Text(AppLocalizations.of(context)!.no,
              style: theme.textTheme.bodyMedium),
        ),
      ],
    );
  }
}
