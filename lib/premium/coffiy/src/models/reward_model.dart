import 'package:ultimate_bundle/premium/coffiy/src/models/coffee_model.dart';

class RewardModel {
  final CoffeeModel? coffee;
  final DateTime? dateTime;
  final int? point;

  RewardModel({this.coffee, this.dateTime, this.point});
}

List<RewardModel> rewardList = [
  RewardModel(
    coffee: coffeeList[1],
    dateTime: DateTime.parse('2021-09-25 09:49:22'),
    point: 25,
  ),
  RewardModel(
    coffee: coffeeList[3],
    dateTime: DateTime.parse('2021-08-10 04:30:22'),
    point: 25,
  ),
  RewardModel(
    coffee: coffeeList[2],
    dateTime: DateTime.parse('2021-07-28 01:15:22'),
    point: 25,
  ),
  RewardModel(
    coffee: coffeeList[0],
    dateTime: DateTime.parse('2021-07-15 02:30:22'),
    point: 25,
  ),
];
