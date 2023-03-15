part of '../profile_page.dart';

Future<dynamic> logoutDialog(BuildContext context) {
  final theme = Theme.of(context);

  return showDialog<dynamic>(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        title: Text(
          '${AppLocalizations.of(context)!.do_you_want_to_exit} ?',
          style: theme.textTheme.displaySmall,
        ),
        actions: [
          CustomTextButton(
            onTap: Get.back,
            label: AppLocalizations.of(context)!.cancel,
          ),
          CustomTextButton(
            onTap: () => Get.offAllNamed<dynamic>(BarberaRoutes.socialNetwork),
            label: AppLocalizations.of(context)!.log_out,
            fontColor: theme.primaryColor,
          ),
        ],
      );
    },
  );
}
