class NotificationModel {
  final int? id;
  final String? title;
  final String? description;
  final bool? isOffer;
  final String? date;
  final String? time;

  NotificationModel(
      {this.id,
      this.title,
      this.description,
      this.isOffer,
      this.date,
      this.time});
}
