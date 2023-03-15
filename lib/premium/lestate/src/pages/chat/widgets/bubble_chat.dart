part of '../chat_page.dart';

class _BubleChat extends StatelessWidget {
  const _BubleChat({
    Key? key,
    required this.data,
  }) : super(key: key);

  final MessageModel data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final themeMode = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      alignment:
          data.sender == 'user' ? Alignment.topRight : Alignment.topLeft,
      child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 2,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
            vertical: 5,
          ),
          margin: EdgeInsets.fromLTRB(
            data.sender == 'user' ? width / 2.8 : 0.0,
            0,
            data.sender == 'user' ? 0.0 : width / 2.8,
            Const.space15,
          ),
          decoration: BoxDecoration(
            color: (data.isImage == true)
                ? Colors.transparent
                : data.sender == 'user'
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
            crossAxisAlignment: (data.sender == 'user')
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
                    color: (data.sender == 'user')
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              const SizedBox(height: Const.space5),
              Text(
                // ignore: lines_longer_than_80_chars
                '${DateFormat.yMMMEd().format(data.createdAt!)} • ${DateFormat('HH:mm').format(data.createdAt!)}',
                textAlign: (data.sender == 'user')
                    ? TextAlign.right
                    : TextAlign.left,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: (themeMode.isDarkTheme == false &&
                          data.sender == 'owner' &&
                          data.isImage == false)
                      ? Colors.black87
                      : (themeMode.isDarkTheme == false &&
                              data.sender == 'owner' &&
                              data.isImage == true)
                          ? Colors.black87
                          : (themeMode.isDarkTheme == false &&
                                  data.sender == 'user' &&
                                  data.isImage == false)
                              ? Colors.white70
                              : (themeMode.isDarkTheme == true &&
                                      data.sender == 'owner' &&
                                      data.isImage == false)
                                  ? Colors.black87
                                  : (themeMode.isDarkTheme == true &&
                                          data.sender == 'owner' &&
                                          data.isImage == true)
                                      ? Colors.white70
                                      : (themeMode.isDarkTheme == true &&
                                              data.sender == 'user' &&
                                              data.isImage == false)
                                          ? Colors.white70
                                          : (themeMode.isDarkTheme == true &&
                                                  data.sender == 'user' &&
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
