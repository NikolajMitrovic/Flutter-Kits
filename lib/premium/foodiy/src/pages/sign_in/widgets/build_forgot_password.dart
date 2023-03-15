part of '../sign_in_page.dart';

class _BuildForgotPassword extends StatelessWidget {
  const _BuildForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: () => Get.toNamed<dynamic>(FoodiyRoutes.forgotpassword),
      child: Text(
        AppLocalizations.of(context)!.forgot_password,
        style: theme.textTheme.displaySmall!.copyWith(
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
