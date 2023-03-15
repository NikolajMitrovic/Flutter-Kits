part of '../address_page.dart';

Future<dynamic> _onModalBottomSheetTap(BuildContext context) {
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
            const SizedBox(height: 50),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                Get.back<dynamic>();
                showToast(
                  msg: AppLocalizations.of(context)!
                      .select_as_primary_address_on_click,
                );
              },
              title: Text(
                AppLocalizations.of(context)!.select_as_primary_address,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                showToast(msg: AppLocalizations.of(context)!.edit_on_click);
              },
              title: Text(
                AppLocalizations.of(context)!.edit,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                showToast(msg: AppLocalizations.of(context)!.delete_on_click);
              },
              title: Text(
                AppLocalizations.of(context)!.delete,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.errorColor,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
