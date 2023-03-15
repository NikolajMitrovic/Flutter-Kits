
import 'package:ultimate_bundle/premium/barbera/src/models/barber_model.dart';
import 'package:ultimate_bundle/premium/barbera/src/models/conversation_model.dart';

class ChatModel {
  final BarberModel? barber;
  final bool? isOnline;
  final String? lastMessage;
  final DateTime? dateTime;
  final int? totalUnread;
  final List<ConversationModel>? conversationList;

  ChatModel({
    this.barber,
    this.isOnline,
    this.lastMessage,
    this.dateTime,
    this.totalUnread,
    this.conversationList,
  });
}
