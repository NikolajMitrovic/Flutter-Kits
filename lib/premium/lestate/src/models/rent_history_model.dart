
import 'package:ultimate_bundle/premium/lestate/src/models/estate_model.dart';

class RentHistoryModel {
  final EstateModel? estate;
  final DateTime? checkIn;
  final DateTime? checkOut;

  RentHistoryModel({this.estate, this.checkIn, this.checkOut});
}

List<RentHistoryModel> rentHistoryList = [
  RentHistoryModel(
    estate: specialEstateList[4],
    checkIn: DateTime.parse('2021-09-25 09:49:22'),
    checkOut: DateTime.parse('2021-10-10 09:49:22'),
  ),
  RentHistoryModel(
    estate: specialEstateList[2],
    checkIn: DateTime.parse('2021-06-14 09:49:22'),
    checkOut: DateTime.parse('2021-07-25 09:49:22'),
  ),
  RentHistoryModel(
    estate: specialEstateList[0],
    checkIn: DateTime.parse('2021-02-25 09:49:22'),
    checkOut: DateTime.parse('2021-04-25 09:49:22'),
  ),
];
