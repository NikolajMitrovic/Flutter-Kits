class ChatMessageModel {
  ChatMessageModel({
    this.id,
    this.body,
    this.isImage,
    this.sender,
    this.createdAt,
  });

  int? id;
  String? body;
  bool? isImage;
  String? sender;
  DateTime? createdAt;
}
