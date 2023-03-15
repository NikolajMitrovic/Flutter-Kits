part of '../sign_in_page.dart';

class _BuildRegisterButton extends StatelessWidget {
  const _BuildRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: CustomFadeTransition(
      duration: const Duration(milliseconds: 1000),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              AppLocalizations.of(context)!.dont_have_an_account,
              style: theme.textTheme.titleMedium,
            ),
            CustomTextButton(
              label: AppLocalizations.of(context)!.register,
              enableUnderline: true,
              textColor: theme.primaryColor,
              onTap: () => Get.toNamed<dynamic>(TreshopRoutes.signUp),
            )
          ],
        ),
      ),
    );
  }
}
