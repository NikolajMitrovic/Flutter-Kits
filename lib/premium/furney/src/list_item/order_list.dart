import 'package:ultimate_bundle/premium/furney/src/list_item/product_list.dart';
import 'package:ultimate_bundle/premium/furney/src/models/order_model.dart';

class OrderList {
  static List<OrderModel> orderList = [
    OrderModel(
      product: ProductList.bestSellerList[0],
    ),
    OrderModel(
      product: ProductList.bestSellerList[3],
      orderStatus: OrderStatus.onDelivery,
    ),
    OrderModel(
      product: ProductList.bestSellerList[2],
      orderStatus: OrderStatus.onDelivery,
    ),
    OrderModel(
      product: ProductList.bestSellerList[1],
      orderStatus: OrderStatus.complete,
    ),
  ];
}
