part of '../archived_inbox_page.dart';

class _ChatCard extends StatelessWidget {
  const _ChatCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InboxModel data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            label: AppLocalizations.of(context)!.unarchive,
            backgroundColor : theme.primaryColor,
            icon: Icons.unarchive,
            onPressed: (context) => showToast(
              msg: AppLocalizations.of(context)!.unarchive,
            ),
          ),
        ],
      ),
      child: ListTile(
        onTap: () => Get.toNamed<dynamic>(BelilaRoutes.chat),
        onLongPress: () {
          showDialog<dynamic>(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: SizedBox(
                  // width: 200.0,
                  // height: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.unarchive,
                        style: theme.textTheme.displaySmall,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        AppLocalizations.of(context)!
                            .are_you_sure_you_want_to_move_to_chat,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                actions: [
                  CustomTextButton(
                    label: AppLocalizations.of(context)!.cancel,
                    onTap: Get.back,
                  ),
                  CustomTextButton(
                    label: AppLocalizations.of(context)!.yes_sure,
                    onTap: () {
                      Get.back<dynamic>();
                    },
                    textColor: theme.errorColor,
                  ),
                ],
              );
            },
          );
        },
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                data.store?.image ?? Const.image,
              ),
            ),
          ),
        ),
        title: Text(
          data.store!.name!,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        subtitle: data.lastMessageIsImage!
            ? Row(
                children: [
                  Icon(
                    Icons.image,
                    size: 15,
                    color: Theme.of(context).disabledColor,
                  ),
                  const SizedBox(width: 5),
                  // Text(
                  //   'Gambar',
                  //   maxLines: 1,
                  //   style: Theme.of(context).textTheme.titleSmall,
                  // ),
                ],
              )
            : Text(
                data.lastMessage!,
                maxLines: 1,
                style: Theme.of(context).textTheme.titleSmall,
              ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(DateFormat('kk:mm').format(data.lastDatetime!)),
            const SizedBox(height: 5),
            if (data.unRead == 0)
              const SizedBox()
            else
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Text(
                  data.unRead.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white),
                ),
              )
          ],
        ),
      ),
    );
  }
}
