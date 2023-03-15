part of '../chat_page.dart';

class BelilaChatScreen extends StatefulWidget {
  const BelilaChatScreen({Key? key}) : super(key: key);
  @override
  State<BelilaChatScreen> createState() => _BelilaChatScreenState();
}

class _BelilaChatScreenState extends State<BelilaChatScreen> {
  TextEditingController? _chatController;
  ScrollController? _scrollController;
  late final ChatModel _chat = mockChat;

  @override
  void initState() {
    super.initState();
    _chatController = TextEditingController();
    _scrollController = ScrollController();
    // autoScroll();
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
        title: _chat.receiver?.name ?? '',
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                const Divider(),
                _BuildProductListTile(chat: _chat),
                const Divider(),
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _chat.message!.length,
                    itemBuilder: (context, index) {
                      final data = _chat.message![index];
                      return _BubleChat(data: data);
                    },
                  ),
                ),
              ],
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
