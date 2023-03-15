part of '../chat_page.dart';


class _BubleChat extends StatelessWidget {
  const _BubleChat({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ChatMessageModel data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeMode = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      alignment:
          data.sender == 'customer' ? Alignment.topRight : Alignment.topLeft,
      child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 2,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
            vertical: 5,
          ),
          margin: EdgeInsets.fromLTRB(
            data.sender == 'customer' ? Screens.width(context) / 2.8 : 0.0,
            0,
            data.sender == 'customer' ? 0.0 : Screens.width(context) / 2.8,
            Const.space15,
          ),
          decoration: BoxDecoration(
            color: (data.isImage == true)
                ? Colors.transparent
                : data.sender == 'customer'
                    ? theme.primaryColor
                    : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: data.isImage!
                ? []
                : [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
          ),
          child: Column(
            crossAxisAlignment: (data.sender == 'customer')
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              if (data.isImage!)
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: OctoImage(
                    image: CachedNetworkImageProvider(data.body!),
                  ),
                )
              else
                Text(
                  data.body!,
                  style: TextStyle(
                    color: (data.sender == 'customer')
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              const SizedBox(height: Const.space5),
              Text(
                // ignore: lines_longer_than_80_chars
                '${DateFormat.yMMMEd().format(data.createdAt!)} • ${DateFormat('HH:mm').format(data.createdAt!)}',
                textAlign: (data.sender == 'customer')
                    ? TextAlign.right
                    : TextAlign.left,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: (themeMode.isDarkTheme == false &&
                          data.sender == 'seller' &&
                          data.isImage == false)
                      ? Colors.black87
                      : (themeMode.isDarkTheme == false &&
                              data.sender == 'seller' &&
                              data.isImage == true)
                          ? Colors.black87
                          : (themeMode.isDarkTheme == false &&
                                  data.sender == 'customer' &&
                                  data.isImage == false)
                              ? Colors.white70
                              : (themeMode.isDarkTheme == true &&
                                      data.sender == 'seller' &&
                                      data.isImage == false)
                                  ? Colors.black87
                                  : (themeMode.isDarkTheme == true &&
                                          data.sender == 'seller' &&
                                          data.isImage == true)
                                      ? Colors.white70
                                      : (themeMode.isDarkTheme == true &&
                                              data.sender == 'customer' &&
                                              data.isImage == false)
                                          ? Colors.white70
                                          : (themeMode.isDarkTheme == true &&
                                                  data.sender == 'customer' &&
                                                  data.isImage == true)
                                              ? Colors.white70
                                              : Colors.black87,
                ),
              ),
            ],
          )),
    );
  }
}
