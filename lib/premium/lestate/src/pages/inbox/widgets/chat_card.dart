part of '../inbox_page.dart';

class _ChatCard extends StatelessWidget {
  final ChatModel chat;

  const _ChatCard({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => Get.toNamed<dynamic>(LestateRoutes.chat, arguments: chat),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              label: AppLocalizations.of(context)!.delete,
              backgroundColor : Colors.red,
              icon: Icons.delete,
              onPressed: (context) => showToast(
                msg: AppLocalizations.of(context)!.remove_from_inbox,
              ),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Const.radius),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          chat.profilePhoto ?? '',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chat.name ?? '',
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          chat.lastMessage ?? '',
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        DateFormat.jm().format(chat.dateTime!),
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: Const.space8),
                      if (chat.unReadMessage == 0)
                        const SizedBox()
                      else
                        CircleAvatar(
                          radius: 10,
                          backgroundColor : Const.accentColor,
                          child: Text(
                            chat.unReadMessage.toString(),
                            style: theme.textTheme.titleSmall?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        )
                    ],
                  )
                ],
              ),
              const SizedBox(height: Const.space15),
              Divider(color: theme.primaryColor),
              const SizedBox(height: Const.space15),
            ],
          ),
        ),
      ),
    );
  }
}
