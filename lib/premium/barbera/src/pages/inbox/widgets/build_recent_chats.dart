part of '../inbox_page.dart';

class _BuildRecentChats extends StatelessWidget {
  const _BuildRecentChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            AppLocalizations.of(context)!.recent_chats,
            style: theme.textTheme.displaySmall,
          ),
        ),
        const SizedBox(height: Const.space12),
        ListView.builder(
          itemCount: recentChats.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          itemBuilder: (context, index) {
            final chat = recentChats[index];
            return _BuildListTile(chat: chat);
          },
        ),
      ],
    );
  }
}
