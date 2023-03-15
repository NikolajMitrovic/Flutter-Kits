import 'package:ultimate_bundle/premium/coffiy/src/models/coffee_model.dart';

class CartModel {
  final CoffeeModel? coffee;
  final String? type;
  final String? size;
  final String? ice;
  final int? price;
  final int? quantity;

  CartModel({
    this.coffee,
    this.type,
    this.size,
    this.ice,
    this.price,
    this.quantity,
  });
}

List<CartModel> cartModel = [
  CartModel(
    coffee: coffeeList[3],
    ice: 'Medium Ice',
    size: 'Big',
    type: 'Hot',
    price: 25,
    quantity: 2,
  ),
  CartModel(
    coffee: coffeeList[1],
    ice: 'Less Ice',
    size: 'Medium',
    type: 'Iced',
    price: 2,
    quantity:1,
  ),
];
