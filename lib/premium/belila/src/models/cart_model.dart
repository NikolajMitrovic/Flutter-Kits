class CartModel {
  CartModel({
    this.id,
    this.product,
  });

  int? id;
  ProductCartModel? product;
}

class ProductCartModel {
  ProductCartModel({
    this.id,
    this.name,
    this.price,
    this.stock,
    this.image,
    this.hidden,
    this.amount,
    this.store,
    this.isChecked,
  });

  int? id;
  String? name;
  int? price;
  int? stock;
  String? image;
  String? hidden;
  int? amount;
  StoreCartModel? store;
  bool? isChecked;
}

class StoreCartModel {
  StoreCartModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;
}

List<CartModel> cartList = [
  CartModel(
    id: 1,
    product: ProductCartModel(
      id: 1,
      name: 'Adidas Ultra boost 21',
      price: 12000000,
      amount: 1,
      stock: 1,
      image: 'https://i.pinimg.com/236x/49/24/0b/49240bc709240ac98cec2b21f00237e9.jpg',
      store: StoreCartModel(
        id: 1,
        name: 'Adidas',
      )
    ),
  ),
];
