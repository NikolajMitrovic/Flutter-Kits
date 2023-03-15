class OfferModel {
  final String? title;
  final String? description;
  final DateTime? dateTime;

  OfferModel({this.title, this.description, this.dateTime});
}

List<OfferModel> offerList = [
  OfferModel(
    title: 'Summer sale',
    description: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    dateTime: DateTime.now(),
  ),
  OfferModel(
    title: 'Buy 1 Get 1',
    dateTime: DateTime.now(),
    description: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
  ),
  OfferModel(
    title: 'Best offer',
    dateTime: DateTime.now(),
    description: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
  ),
];
