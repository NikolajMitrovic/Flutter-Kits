import 'package:ultimate_bundle/premium/shuppy/src/models/product_model.dart';

class FavoriteModel {
  final int? id;
  final ProductModel? product;
  bool isLiked;

  FavoriteModel({this.id, this.product, this.isLiked = false});
}
