class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.price,
    this.stock,
    this.rating,
    this.sold,
    this.image,
    this.storeName,
  });

  int? id;
  String? name;
  int? price;
  int? stock;
  int? rating;
  int? sold;
  String? image;
  String? storeName;
}

List<ProductModel> popularProductList = [
  ProductModel(
    id: 1,
    name: 'Nike SB Dunk High QS Reese Denim',
    price: 5000000,
    rating: 5,
    sold: 24,
    stock: 4,
    storeName: 'Nike',
    image: 'https://i.pinimg.com/564x/a2/f1/5c/a2f15ce77893135b864f8891861c1810.jpg',
  ),
  ProductModel(
    id: 1,
    name: 'Adidas Ultra boost 21',
    price: 12000000,
    rating: 5,
    sold: 2,
    stock: 4,
    storeName: 'Adidas',
    image: 'https://i.pinimg.com/236x/49/24/0b/49240bc709240ac98cec2b21f00237e9.jpg',
  ),
  ProductModel(
    id: 1,
    name: 'Adidas Gazelle',
    price: 5550000,
    rating: 5,
    sold: 1,
    stock: 4,
    storeName: 'Adidas',
    image: 'https://i.pinimg.com/564x/6e/51/49/6e514966312aeb13243ba192a6fd6c8c.jpg',
  ),
  ProductModel(
    id: 1,
    name: 'Nike Air Max 1',
    price: 4300000,
    rating: 5,
    sold: 3,
    stock: 4,
    storeName: 'Nike',
    image: 'https://i.pinimg.com/564x/81/8f/d2/818fd2b1ae3e284fab873feb66ab3c87.jpg',
  ),
  ProductModel(
    id: 1,
    name: 'Converse x Tyler le Fleur',
    price: 2320000,
    rating: 5,
    sold: 2,
    stock: 4,
    storeName: 'Converse',
    image: 'https://i.pinimg.com/564x/af/e9/43/afe943f6235e83c4001d9d4b2c59d119.jpg',
  ),
];
