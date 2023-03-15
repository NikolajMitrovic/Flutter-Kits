part of '../chat_page.dart';

AppBar _buildAppBar(BuildContext context, {required ChatModel chat}) {
  final themeMode = Provider.of<ThemeProvider>(context);
  final theme = Theme.of(context);

  return AppBar(
    backgroundColor : theme.backgroundColor ,
    elevation: 0,
    leading: IconButton(
      onPressed: Get.back,
      icon: const Icon(Icons.arrow_back),
      color: theme.primaryColor,
    ),
    title: Text(
      chat.barber?.name ?? '',
      // 'ksdksmdk skdm skdmsk dmsk dmskdmsdm ksm',
      style: theme.textTheme.displaySmall,
      maxLines: 1,
      textAlign: TextAlign.center,
    ),
    actions: [
      IconButton(
        onPressed: () {
          showToast(msg: AppLocalizations.of(context)!.video_call_on_click);
        },
        icon: const Icon(Icons.videocam),
        color: (themeMode.isDarkTheme == true)
            ? ColorDark.fontTitle
            : ColorLight.fontTitle,
      ),
      IconButton(
        onPressed: () {
          showToast(msg: AppLocalizations.of(context)!.more_on_click);
        },
        icon: const Icon(Icons.more_vert),
        color: (themeMode.isDarkTheme == true)
            ? ColorDark.fontTitle
            : ColorLight.fontTitle,
      ),
    ],
  );
}
