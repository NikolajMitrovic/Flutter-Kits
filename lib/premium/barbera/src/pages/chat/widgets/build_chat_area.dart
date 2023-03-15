part of '../chat_page.dart';

class _BuildChatArea extends StatelessWidget {
  const _BuildChatArea({
    Key? key,
    required this.textController,
  }) : super(key: key);

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: Screens.width(context),
      height: 70,
      color: theme.cardColor,
      child: Row(
        children: [
          IconButton(
            onPressed: () => _uploadBottomSheet(context),
            icon: const Icon(FeatherIcons.paperclip),
          ),
          const SizedBox(width: Const.space12),
          Expanded(
            child: _BuildTextTextField(
              controller: textController,
            ),
          ),
          const SizedBox(width: Const.space12),
          IconButton(
            onPressed: () {
              showToast(
                msg: AppLocalizations.of(context)!.send_a_message_on_click,
              );
            },
            icon: const Icon(FeatherIcons.send),
          ),
        ],
      ),
    );
  }
}
