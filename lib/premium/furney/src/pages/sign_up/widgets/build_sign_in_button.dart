part of '../sign_up_page.dart';

class _BuildSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomFadeTransition(
      duration: const Duration(milliseconds: 500),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoSizeText(
              AppLocalizations.of(context)!.already_have_an_account,
              style: theme.textTheme.titleSmall?.copyWith(),
            ),
            CustomTextButton(
              label: AppLocalizations.of(context)!.sign_in.toUpperCase(),
              fontSize: 12,
              enableUnderline: true,
              onTap: Get.back,
            ),
          ],
        ),
      ),
    );
  }
}
