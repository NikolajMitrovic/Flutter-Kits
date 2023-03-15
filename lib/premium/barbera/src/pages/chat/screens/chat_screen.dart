part of '../chat_page.dart';

class BarberaChatScreen extends StatefulWidget {
  const BarberaChatScreen({Key? key}) : super(key: key);

  @override
  State<BarberaChatScreen> createState() => _BarberaChatScreenState();
}

class _BarberaChatScreenState extends State<BarberaChatScreen> {
   late ChatModel _chat;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _chat = Get.arguments as ChatModel;
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context,chat: _chat),
      body: Column(
        children: [
          _BuildChatList(chat: _chat),
          _BuildChatArea(textController: _textController)
        ],
      ),
    );
  }
}
