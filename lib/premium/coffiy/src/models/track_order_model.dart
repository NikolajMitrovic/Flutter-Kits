import 'package:ultimate_bundle/premium/coffiy/src/helpers/constants.dart';

class TrackOrderModel {
  final String? icon;
  final String? title;
  final String? subtitle;
  final bool? isLast;

  TrackOrderModel({this.icon, this.title, this.subtitle, this.isLast});
}

List<TrackOrderModel> trackOrderList = [
  TrackOrderModel(
    icon: CustomIcons.store,
    title: 'Coffiy Coffee Shop',
    subtitle: 'Preparing your order',
    isLast: false,
  ),
  TrackOrderModel(
    icon: CustomIcons.delivery,
    title: 'Sending to you',
    subtitle: 'Estimated arrival time 15.25 PM',
    isLast: true,
  ),
];
