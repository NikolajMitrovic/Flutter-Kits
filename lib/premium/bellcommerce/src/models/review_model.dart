import 'package:ultimate_bundle/premium/bellcommerce/src/models/user_model.dart';

class ReviewModel {
  final UserModel? user;
  final double? rating;
  final String? comment;
  final List<String>? screenshoots;

  ReviewModel({
    this.user,
    this.rating,
    this.comment,
    this.screenshoots,
  });
}

List<ReviewModel> reviewList = [
  ReviewModel(
    user: userList[0],
    comment: 'Very good condition, premium quality, recommended seller',
    rating: 5,
    screenshoots: [
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
    ]
  ),
  ReviewModel(
    user: userList[1],
    comment: 'Thanks for the product, i will order again soon',
    rating: 5,
    screenshoots: [
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
    ]
  ),
  ReviewModel(
    user: userList[2],
    comment: 'My box almost broken, but fine, thanks',
    rating: 4,
    screenshoots: [
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
      'https://i.pinimg.com/564x/96/7b/6c/967b6c88341f2d4bed61cc1c48efece8.jpg',
    ]
  ),

];
