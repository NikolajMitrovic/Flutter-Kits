class MessageModel {
  MessageModel({
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

List<MessageModel> messageList = [
  MessageModel(
    id: 1,
    body: 'Hi, your product ready to order?',
    sender: 'user',
    isImage: false,
    createdAt: DateTime.parse('2021-09-25 09:49:22'),
  ),
  MessageModel(
    id: 2,
    body: 'Yes, ready to order. go ahead',
    sender: 'owner',
    isImage: false,
    createdAt: DateTime.parse('2021-09-25 09:49:22'),
  ),
  MessageModel(
    id: 3,
    body: 'Alright, please packaging fast bro',
    sender: 'user',
    isImage: false,
    createdAt: DateTime.parse('2021-09-25 09:49:22'),
  ),
];
