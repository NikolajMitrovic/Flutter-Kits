part of '../chat_page.dart';

class _BuildChatList extends StatelessWidget {
  const _BuildChatList({
    Key? key,
    required ChatModel chat,
  })  : _chat = chat,
        super(key: key);

  final ChatModel _chat;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _chat.conversationList?.length,
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final data = _chat.conversationList?[index];
          return _BuildBubbleChat(
            data: data!,
            photoProfile: _chat.barber?.photo ?? '',
          );
        },
      ),
    );
  }
}
