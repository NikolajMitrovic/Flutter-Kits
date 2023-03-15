class InboxModel {
  InboxModel({
    this.id,
    this.unRead,
    this.lastSender,
    this.lastMessage,
    this.lastMessageIsImage,
    this.lastDatetime,
    this.user,
    this.store,
  });

  int? id;
  int? unRead;
  String? lastSender;
  String? lastMessage;
  bool? lastMessageIsImage;
  DateTime? lastDatetime;
  UserInboxModel? user;
  UserInboxModel? store;
}

class UserInboxModel {
  UserInboxModel({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;
}

List<InboxModel> inboxList = [
  InboxModel(
    id: 1,
    unRead: 0,
    lastSender: 'true',
    lastMessage: 'Thank you',
    lastDatetime: DateTime.parse('2021-09-25 09:49:22'),
    lastMessageIsImage: false,
    user: UserInboxModel(
      id: 1,
      name: 'Mae K Alsup',
      image: 'https://i.pinimg.com/564x/92/24/78/922478f97fa2b4052b8020938167955c.jpg',
    ),
    store: UserInboxModel(
      id: 3,
      name: 'Sergio A Riley',
      image: 'https://i.pinimg.com/564x/28/9d/01/289d011c876690f5880746aed66b2a63.jpg',
    ),
  ),

  InboxModel(
    id: 2,
    unRead: 0,
    lastSender: 'true',
    lastMessage: 'Wait for order',
    lastDatetime: DateTime.parse('2021-09-25 09:49:22'),
    lastMessageIsImage: false,
    user: UserInboxModel(
      id: 3,
      name: 'Sergio A Riley',
      image: 'https://i.pinimg.com/564x/28/9d/01/289d011c876690f5880746aed66b2a63.jpg',
    ),
    store: UserInboxModel(
      id: 1,
      name: 'Mae K Alsup',
      image: 'https://i.pinimg.com/564x/92/24/78/922478f97fa2b4052b8020938167955c.jpg',
    ),
  ),
];
