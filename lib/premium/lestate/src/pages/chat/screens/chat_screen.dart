part of '../chat_page.dart';

class LestateChatScreen extends StatefulWidget {
  const LestateChatScreen({Key? key}) : super(key: key);
  @override
  State<LestateChatScreen> createState() => _LestateChatScreenState();
}

class _LestateChatScreenState extends State<LestateChatScreen> {
  TextEditingController? _chatController;
  ScrollController? _scrollController;
  late ChatModel _chat;

  @override
  void initState() {
    super.initState();
    _chat = Get.arguments as ChatModel;
    _chatController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _chatController!.dispose();
    _scrollController!.dispose();
    super.dispose();
  }

  Future<void> _launchPhoneCall(String number) async {
    final Uri phoneCall = Uri(scheme: 'tel',path: number);
    await launchUrl(phoneCall);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: _chat.name ?? '',
        actions: [
          IconButton(
            onPressed: () async {
              await _launchPhoneCall('tel:8867388836');
            },
            icon: const Icon(IconlyBold.call),
            color: Theme.of(context).primaryColor,
          ),
        ],
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
