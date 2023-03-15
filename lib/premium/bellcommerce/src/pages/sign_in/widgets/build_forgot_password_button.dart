part of '../sign_in_page.dart';

class _BuildForgotPassword extends StatelessWidget {
  const _BuildForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () => Get.toNamed<dynamic>(BellcommerceRoutes.forgotPassword),
        child: Text(
          AppLocalizations.of(context)!.forgot_password,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
