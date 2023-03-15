import 'package:ultimate_bundle/premium/coffiy/src/helpers/constants.dart';

class PaymentModel {
  final String? name;
  final String? icon;

  PaymentModel({
    this.icon,
    this.name,
  });
}

List<PaymentModel> paymentList = [
  PaymentModel(
    name: 'PayPal',
    icon: CustomIcons.payPal,
  ),
  PaymentModel(
    name: 'Credit Card',
    icon: CustomIcons.creditCard,
  ),

];
