part of '../chat_page.dart';


class _BuildSendTextField extends StatelessWidget {
  const _BuildSendTextField({
    Key? key,
    this.controller,
    this.insertOnTap,
    this.sendOnTap,
  }) : super(key: key);

  final TextEditingController? controller;
  final VoidCallback? insertOnTap;
  final VoidCallback? sendOnTap;

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeProvider>(context);
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: theme.cardColor,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.photo),
            iconSize: 25,
            color: themeMode.isDarkTheme
                ? ColorDark.fontTitle
                : ColorLight.fontTitle,
            onPressed: insertOnTap,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              style: theme.textTheme.bodyMedium,
              decoration: InputDecoration.collapsed(
                hintText: AppLocalizations.of(context)!.send_a_message,
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            iconSize: 25,
            color: theme.primaryColor,
            onPressed: sendOnTap,
          ),
        ],
      ),
    );
  }
}
