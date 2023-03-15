import 'package:ultimate_bundle/premium/barbera/src/mock_data/barber_mock.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/chat_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/conversation_model.dart';

List<ChatModel> onlineBarber = [
  ChatModel(
    barber: topBarberList[1],
    isOnline: true,
    lastMessage: 'Thank you for your information',
    dateTime: DateTime.now(),
    conversationList: [],
  ),
  ChatModel(
    barber: topBarberList[3],
    isOnline: true,
    lastMessage: 'Cool bro, see you next week!',
    dateTime: DateTime.now(),
    conversationList: [],
  ),
  ChatModel(
    barber: topBarberList[2],
    isOnline: true,
    lastMessage: 'Okay.',
    dateTime: DateTime.now(),
    conversationList: [],
  ),
  ChatModel(
    barber: topBarberList[0],
    isOnline: true,
    lastMessage: 'Good game, well played!',
    dateTime: DateTime.now(),
    conversationList: [],
  ),
  ChatModel(
    barber: topBarberList[4],
    isOnline: true,
    lastMessage: 'Lakad Matataaaaaaangg!!',
    dateTime: DateTime.now(),
    conversationList: [],
  ),
];
List<ChatModel> recentChats = [
  ChatModel(
    barber: topBarberList[5],
    isOnline: true,
    lastMessage: 'Thank you for your information',
    dateTime: DateTime.now(),
    totalUnread: 2,
    conversationList: [
      ConversationModel(
        isImage: true,
        isSender: true,
        dateTime: DateTime.now(),
        text: 'Hello, how are you',
      ),
      ConversationModel(
        isImage: true,
        isSender: true,
        dateTime: DateTime.now(),
        text: 'I wanted to fix my hair',
      ),
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'Okay, can handle you in 10:00PM',
      ),
      ConversationModel(
        isImage: true,
        isSender: true,
        dateTime: DateTime.now(),
        text: 'Thank you for your information',
      ),
    ],
  ),
  ChatModel(
    barber: topBarberList[3],
    isOnline: true,
    lastMessage: 'Cool bro, see you next week!',
    dateTime: DateTime.now(),
    totalUnread: 3,
    conversationList: [
      ConversationModel(
        isImage: true,
        isSender: true,
        dateTime: DateTime.now(),
        text: 'Do you have some promo or discount bro?',
      ),
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'Okay, come fast i gave you special offer',
      ),
      ConversationModel(
        isImage: true,
        isSender: true,
        dateTime: DateTime.now(),
        text: 'Cool bro, see you next week!',
      ),
    ],
  ),
  ChatModel(
    barber: topBarberList[2],
    isOnline: true,
    lastMessage: 'Okay.',
    dateTime: DateTime.now(),
    totalUnread: 0,
    conversationList: [
      ConversationModel(
        isImage: true,
        isSender: true,
        dateTime: DateTime.now(),
        text: 'Thank you',
      ),
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'Okay.',
      ),
    ],
  ),
  ChatModel(
    barber: topBarberList[0],
    isOnline: true,
    lastMessage: 'Good game, well played!',
    dateTime: DateTime.now(),
    totalUnread: 0,
    conversationList: [
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'Nice game dude hahaha',
      ),
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'Good game, well played!',
      ),
    ],
  ),
  ChatModel(
    barber: topBarberList[4],
    isOnline: true,
    lastMessage: 'See you soon..',
    dateTime: DateTime.now(),
    totalUnread: 0,
    conversationList: [
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'Hey man.. come here',
      ),
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'We have some offer to you',
      ),
      ConversationModel(
        isImage: true,
        isSender: false,
        dateTime: DateTime.now(),
        text: 'See you soon..',
      ),
    ]
  ),
];
