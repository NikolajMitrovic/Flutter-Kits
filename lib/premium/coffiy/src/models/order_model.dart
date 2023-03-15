import 'package:ultimate_bundle/premium/coffiy/src/models/coffee_model.dart';

class OrderModel {
  final CoffeeModel? coffee;
  final String? address;
  final int? total;
  final DateTime? dateTime;

  OrderModel({
    this.coffee,
    this.address,
    this.total,
    this.dateTime,
  });
}

List<OrderModel> processOrderList = [
  OrderModel(
    coffee: coffeeList[0],
    address: '565 Bubby Drive, Austin, Texas, 78741',
    dateTime: DateTime.parse('2021-09-25 09:49:22'),
    total: 25,
  ),
  OrderModel(
    coffee: coffeeList[1],
    address: '3588 Glen Falls Road, Philadelphia, Pennsylvania, 19104',
    dateTime: DateTime.parse('2021-09-10 02:22:22'),
    total: 15,
  ),
  OrderModel(
    coffee: coffeeList[2],
    address: '1563 Benson Park Drive, Oklahoma City, Oklahoma, 73160',
    dateTime: DateTime.parse('2021-08-29 05:55:22'),
    total: 5,
  ),
  OrderModel(
    coffee: coffeeList[3],
    address: '4173 Massachusetts Avenue, Washington, Washington DC, 20011',
    dateTime: DateTime.parse('2021-07-10 07:10:22'),
    total: 10,
  ),
];

List<OrderModel> historyOrderList = [
  OrderModel(
    coffee: coffeeList[2],
    address: '1563 Benson Park Drive, Oklahoma City, Oklahoma, 73160',
    dateTime: DateTime.parse('2021-05-20 05:55:22'),
    total: 5,
  ),
  OrderModel(
    coffee: coffeeList[3],
    address: '4173 Massachusetts Avenue, Washington, Washington DC, 20011',
    dateTime: DateTime.parse('2021-05-10 07:10:22'),
    total: 10,
  ),
];
