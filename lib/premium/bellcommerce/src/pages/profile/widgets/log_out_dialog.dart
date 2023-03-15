part of '../profile_page.dart';

Future _signOutDialog(BuildContext context) {
  final theme = Theme.of(context);

  return showDialog<dynamic>(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Const.margin),
        ),
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.are_you_sure_you_want_to_sign_out,
            style: theme.textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          TextButton(
            onPressed: Get.back,
            child: Text(
              AppLocalizations.of(context)!.cancel,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          TextButton(
            onPressed: () => Get.offAllNamed<dynamic>(
              BellcommerceRoutes.signIn,
            ),
            child: Text(
              AppLocalizations.of(context)!.logout,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.primaryColor,
              ),
            ),
          ),
        ],
      );
    },
  );
}
