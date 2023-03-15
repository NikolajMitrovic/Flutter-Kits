

import 'package:ultimate_bundle/premium/foodiy/src/models/food_model.dart';

enum OrderStatus { pending, onDelivery, success, cancelled }

class OrderModel {
  final int? id;
  final FoodModel? food;
  final DateTime? orderTime;
  OrderStatus orderStatus;

  OrderModel({
    this.id,
    this.food,
    this.orderTime,
    this.orderStatus = OrderStatus.pending,
  });
}

List<OrderModel> mockOrderList = [];
List<OrderModel> mockPastOrderList = [];
