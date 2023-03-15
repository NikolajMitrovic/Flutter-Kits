
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/helpers/constants.dart';

class PaymentModel {
  final String? title;
  final String? icon;
  bool? isSelected;

  PaymentModel({this.title, this.icon, this.isSelected});
}

List<PaymentModel> paymentList(BuildContext context) => [
  PaymentModel(
    title: AppLocalizations.of(context)!.credit_card_or_debit,
    icon: Assets.debit,
    isSelected: false,
  ),
  PaymentModel(
    title: AppLocalizations.of(context)!.paypal,
    icon: Assets.paypal,
    isSelected: false,
  ),
  PaymentModel(
    title:AppLocalizations.of(context)!.bank_tansfer,
    icon: Assets.bank,
    isSelected: false,
  ),
];
