part of '../chat_page.dart';

class CoffiyChatScreen extends StatefulWidget {
  const CoffiyChatScreen({Key? key}) : super(key: key);

  @override
  State<CoffiyChatScreen> createState() => _CoffiyChatScreenState();
}

class _CoffiyChatScreenState extends State<CoffiyChatScreen> {
  TextEditingController? _chatController;
  ScrollController? _scrollController;
  late final ChatModel _chat = chatList.first;

  @override
  void initState() {
    super.initState();
    _chatController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _chatController!.dispose();
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: _chat.name ?? '',
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _chat.messages!.length,
              itemBuilder: (context, index) {
                final data = _chat.messages![index];
                return _BubleChat(data: data);
              },
            ),
          ),
          _BuildSendTextField(
            controller: _chatController,
            insertOnTap: () {
              showToast(msg: AppLocalizations.of(context)!.attach_file_clicked);
            },
            sendOnTap: () {
              FocusScope.of(context).requestFocus(FocusNode());

              showToast(msg: AppLocalizations.of(context)!.send_a_message);
            },
          ),
        ],
      ),
    );
  }

  void autoScroll() {
    _scrollController!.jumpTo(_scrollController!.position.maxScrollExtent);
  }
}
