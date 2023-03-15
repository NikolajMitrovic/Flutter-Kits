class ProductModel {
  final int? id;
  final String? name;
  final int? price;
  final double? rating;
  final String? description;
  final List<String>? images;
  int quantity;

  ProductModel({
    this.images,
    this.id,
    this.name,
    this.price,
    this.rating,
    this.description,
    this.quantity = 1,
  });
}
