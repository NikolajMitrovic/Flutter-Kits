part of '../gallery_page.dart';

Future<dynamic> _moreBottomSheet(BuildContext context) {
  final theme = Theme.of(context);
  return showModalBottomSheet<dynamic>(
    context: context,
    backgroundColor : theme.cardColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Const.radius),
        topRight: Radius.circular(Const.radius),
      ),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
        ),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Const.radius),
            topRight: Radius.circular(Const.radius),
          ),
        ),
        width: Screens.width(context),
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Const.space8),
            Center(
              child: Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                  color: theme.hintColor,
                  borderRadius: BorderRadius.circular(
                    Const.radius,
                  ),
                ),
              ),
            ),
            const Spacer(),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () async {
                Get.back<dynamic>();
                await Share.share('check out my website https://google.com');
              },
              title: Text(
                AppLocalizations.of(context)!.share,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                Get.back<dynamic>();
                showToast(
                    msg: AppLocalizations.of(context)!.hide_this_post_on_click);
              },
              title: Text(
                AppLocalizations.of(context)!.hide_this_post,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                Get.back<dynamic>();
                showToast(msg: AppLocalizations.of(context)!.report_on_click);
              },
              title: Text(
                AppLocalizations.of(context)!.report,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.errorColor,
                ),
              ),
            ),
            const SizedBox(height: Const.margin),
          ],
        ),
      );
    },
  );
}
