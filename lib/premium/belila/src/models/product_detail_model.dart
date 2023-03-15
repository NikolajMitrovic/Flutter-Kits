import 'package:flutter/material.dart';
import 'package:ultimate_bundle/premium/belila/src/models/category_model.dart';

class ProductDetailModel {
  ProductDetailModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.weight,
    this.isNew,
    this.isLiked,
    this.rating,
    this.sold,
    this.image,
    this.unit,
    this.store,
    this.category,
  });

  int? id;
  String? name;
  String? description;
  int? price;
  int? stock;
  double? weight;
  bool? isNew;
  bool? isLiked;
  int? rating;
  int? sold;
  List<String>? image;
  String? unit;
  ProductDetailStoreModel? store;
  CategoryModel? category;
}

class ProductDetailStoreModel {
  ProductDetailStoreModel({
    this.id,
    this.name,
    this.description,
    this.image,
    this.isPublish,
    this.rating,
  });

  int? id;
  int? userId;
  String? name;
  String? description;
  String? phoneNumber;
  String? image;
  String? isPublish;
  int? rating;
  String? verified;
  String? isUmkm;
  DateTime? createdAt;
  DateTime? updatedAt;
}

List<ProductDetailModel> productDetailModelList(BuildContext context) => [
      ProductDetailModel(
        id: 1,
        name: 'Nike Air Zoom Pegasus 38',
        description:
            "Your workhorse with wings returns with a mash-up of classic Nike logos.The Nike Air Zoom Pegasus 38 has that extra bounce for long, short or everyday runs.It's cool and breathable with a wider fit at the toes and plenty of cushioned support to help you fly past your personal goals.",
        price: 12000000,
        stock: 5,
        weight: 200,
        isNew: true,
        isLiked: false,
        rating: 5,
        sold: 3,
        unit: 'Pcs',
        image: [
          'https://i.pinimg.com/564x/4f/21/eb/4f21eb38058aada1f433671b20658d19.jpg',
          'https://i.pinimg.com/564x/6d/fb/4c/6dfb4c70e7054967f151d3e11212fb9b.jpg',
        ],
        store: ProductDetailStoreModel(
          id: 2,
          name: 'Nike',
          description:
              'Nike, Inc. is one of the largest shoe, clothing and sporting goods companies in the United States.',
          image:
              'https://i.pinimg.com/564x/ba/ad/62/baad62f02fb9fbed9381c39da6fe1d1a.jpg',
          isPublish: 'true',
          rating: 5,
        ),
        category: topCategoryList(context)[1],
      ),
    ];
