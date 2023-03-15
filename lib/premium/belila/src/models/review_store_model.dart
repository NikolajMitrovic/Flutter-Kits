class ReviewStoreModel {
  ReviewStoreModel({
    this.id,
    this.review,
    this.rating,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.product,
  });

  int? id;
  String? review;
  int? rating;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;
  ReviewUser? user;
  ProductReview? product;
}

class ReviewUser {
  ReviewUser({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;
}

class ProductReview {
  ProductReview({
    this.id,
    this.name,
    this.price,
    this.image,
  });

  int? id;
  String? name;
  int? price;
  String? image;
}

List<ReviewStoreModel> reviewStoreList = [
  ReviewStoreModel(
    id: 1,
    image:
        'https://i.pinimg.com/564x/c7/1e/f6/c71ef62f66d546f7c924c86ae20e1d7c.jpg',
    rating: 5,
    review: 'Original product, recommended seller',
    createdAt: DateTime.parse('2021-09-25 09:49:22'),
    updatedAt: DateTime.parse('2021-09-25 09:49:24'),
    user: ReviewUser(
      id: 1,
      name: 'Mae K Alsup',
      image:
          'https://i.pinimg.com/564x/92/24/78/922478f97fa2b4052b8020938167955c.jpg',
    ),
    product: ProductReview(
      id: 1,
      name: 'Nike SB Dunk High QS Reese Denim',
      price: 5000000,
      image:
          'https://i.pinimg.com/564x/a2/f1/5c/a2f15ce77893135b864f8891861c1810.jpg',
    ),
  ),
  ReviewStoreModel(
    id: 2,
    image:
        'https://i.pinimg.com/564x/41/8c/3f/418c3f8fe51e93f2b74c6a22107504f5.jpg',
    rating: 5,
    review: 'Amazing price and fast packaging',
    createdAt: DateTime.parse('2021-09-25 09:49:22'),
    updatedAt: DateTime.parse('2021-09-25 09:49:24'),
    user: ReviewUser(
      id: 3,
      name: 'Sergio A Riley',
      image:
          'https://i.pinimg.com/564x/28/9d/01/289d011c876690f5880746aed66b2a63.jpg',
    ),
    product: ProductReview(
      id: 1,
      name: 'Adidas Ultra boost 21',
      price: 12000000,
      image:
          'https://i.pinimg.com/236x/49/24/0b/49240bc709240ac98cec2b21f00237e9.jpg',
    ),
  ),
];
