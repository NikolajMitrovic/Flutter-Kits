import 'package:ultimate_bundle/premium/coffiy/src/models/coffee_model.dart';

class RedeemModel {
  final CoffeeModel? coffee;
  final DateTime? valid;
  final int? point;

  RedeemModel({this.coffee, this.valid, this.point});
}


List<RedeemModel> redeemList = [
  RedeemModel(
    coffee: coffeeList[1],
    valid: DateTime.parse('2021-09-25 09:49:22'),
    point: 1225,
  ),
  RedeemModel(
    coffee: coffeeList[3],
    valid: DateTime.parse('2021-08-10 04:30:22'),
    point: 1000,
  ),
  RedeemModel(
    coffee: coffeeList[2],
    valid: DateTime.parse('2021-07-28 01:15:22'),
    point: 1020,
  ),
  RedeemModel(
    coffee: coffeeList[0],
    valid: DateTime.parse('2021-07-15 02:30:22'),
    point: 2212,
  ),
];
