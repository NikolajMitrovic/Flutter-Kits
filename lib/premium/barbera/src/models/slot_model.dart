class SlotModel {
  final int? id;
  final String? time;
  final bool? isAvailable;
  bool? isSelected;
  bool? isBooked;

  SlotModel({
    this.id,
    this.time,
    this.isAvailable,
    this.isSelected,
    this.isBooked,
  });
}
