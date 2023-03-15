
import 'package:ultimate_bundle/premium/coffiy/src/models/message_model.dart';

class ChatModel {
  final String? profilePhoto;
  final String? name;
  final String? lastMessage;
  final int? unReadMessage;
  final DateTime? dateTime;
  final List<MessageModel>? messages;

  ChatModel({
    this.profilePhoto,
    this.name,
    this.lastMessage,
    this.unReadMessage,
    this.dateTime,
    this.messages,
  });
}

List<ChatModel> chatList = [
  ChatModel(
    name: 'Denisse M Anderson',
    profilePhoto: 'https://i.pinimg.com/564x/dc/7c/58/dc7c582cbb097d68993b860bd4e785a3.jpg',
    lastMessage: 'OK, I wil waiting for you',
    unReadMessage: 0,
    dateTime: DateTime.parse('2021-09-25 09:49:22'),
    messages: messageList,
  ),
  ChatModel(
    name: 'Temple E Rowden',
    profilePhoto: 'https://i.pinimg.com/564x/af/18/23/af18230eae45ec60cff1d10ada40dd88.jpg',
    lastMessage: 'The property quality is GOOD!',
    unReadMessage: 3,
    dateTime: DateTime.parse('2021-09-25 11:33:22'),
    messages: messageList,
  ),
  ChatModel(
    name: 'Crystal R Tripp',
    profilePhoto: 'https://i.pinimg.com/564x/0c/19/d5/0c19d562bbfa5d274020afc50315a4ee.jpg',
    lastMessage: 'Thanks for rent',
    unReadMessage: 2,
    dateTime: DateTime.parse('2021-09-25 12:25:22'),
    messages: messageList,
  ),
  ChatModel(
    name: 'April R Finch',
    profilePhoto: 'https://i.pinimg.com/564x/cc/21/d5/cc21d5932aa73583c23aa7a4cdc5becc.jpg',
    lastMessage: 'See you soon',
    unReadMessage: 0,
    dateTime: DateTime.parse('2021-09-25 04:51:22'),
    messages: messageList,
  ),
  ChatModel(
    name: 'Angela E Medina',
    profilePhoto: 'https://i.pinimg.com/564x/33/e1/e5/33e1e538f7af395e77eb685212638d68.jpg',
    lastMessage: 'Of course.',
    unReadMessage: 0,
    dateTime: DateTime.parse('2021-09-25 07:34:22'),
    messages: messageList,
  ),
];
