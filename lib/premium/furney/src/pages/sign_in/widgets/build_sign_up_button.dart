part of '../sign_in_page.dart';

class _BuildSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomFadeTransition(
      axis: Axis.vertical,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoSizeText(
              AppLocalizations.of(context)!.dont_have_an_account,
              style: theme.textTheme.titleSmall?.copyWith(),
            ),
            CustomTextButton(
              label: AppLocalizations.of(context)!.sign_up.toUpperCase(),
              fontSize: 12,
              enableUnderline: true,
              onTap: () => Get.toNamed<dynamic>(FurneyRoutes.signUp),
            ),
          ],
        ),
      ),
    );
  }
}
