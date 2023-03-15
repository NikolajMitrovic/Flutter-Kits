import 'package:ultimate_bundle/premium/shuppy/src/models/product_model.dart';

enum OrderStatus { pending, process, onDelivery, done }

class OrderModel {
  final int? id;
  final List<ProductModel?>? products;
  final OrderStatus orderStatus;
  final String? address;
  final int? totalOfAllProduct;
  final int? shipping;
  final int? total;
  final DateTime? createdAt;

  OrderModel({
    this.id,
    this.products,
    this.orderStatus = OrderStatus.pending,
    this.address,
    this.totalOfAllProduct,
    this.shipping,
    this.total,
    this.createdAt,
  });
}
