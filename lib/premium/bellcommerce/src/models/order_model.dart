import 'package:ultimate_bundle/premium/bellcommerce/src/models/product_model.dart';

class OrderModel {
  final String? id;
  final String? orderStatus;
  final String? price;
  final String? dateOrder;
  final String? dateShipping;
  final String? shipping;
  final String? noResi;
  final String? address;
  final int? totalItem;
  final String? shippingPrice;
  final String? importCharges;
  final String? totalPrice;
  final List<ProductModel>? items;

  OrderModel(
      {this.id,
      this.orderStatus,
      this.price,
      this.dateOrder,
      this.dateShipping,
      this.shipping,
      this.noResi,
      this.address,
      this.totalItem,
      this.shippingPrice,
      this.importCharges,
      this.totalPrice,
      this.items});
}

List<OrderModel> orderList = [
  OrderModel(
    id: 'LQNSU346JK',
    dateOrder: 'August 1, 2020',
    orderStatus: 'Shipping',
    totalItem: 2,
    price: '598.86',
    address: '3195  May Street, Crab Orchard, Kentucky',
    dateShipping: 'August 2, 2020',
    importCharges: '128.00',
    noResi: '00023232322',
    shipping: 'POS Regular',
    shippingPrice: '40.00',
    totalPrice: '766.86',
    items: [
      productList[3],
      productList[4],
    ],
  ),
  OrderModel(
    id: 'HHJK2322SK',
    dateOrder: 'August 1, 2020',
    orderStatus: 'Shipping',
    totalItem: 2,
    price: '598.86',
    address: '3195  May Street, Crab Orchard, Kentucky',
    dateShipping: 'August 2, 2020',
    importCharges: '128.00',
    noResi: '00023232322',
    shipping: 'POS Regular',
    shippingPrice: '40.00',
    totalPrice: '766.86',
    items: [
      productList[2],
      productList[5],
    ],
  ),
];
