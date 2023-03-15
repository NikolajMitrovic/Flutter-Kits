
import 'package:ultimate_bundle/premium/foodiy/src/models/food_model.dart';

class FavoriteModel {
  final int? id;
  final FoodModel? food;
  bool isLiked;

  FavoriteModel({this.id, this.food, this.isLiked = false});
}

List<FavoriteModel> mockFavoriteList = [];
