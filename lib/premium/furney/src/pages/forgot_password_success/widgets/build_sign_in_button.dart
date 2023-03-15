part of '../forgot_password_success_page.dart';

class _BuildSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomFadeTransition(
      duration:const Duration(milliseconds: 500),
      child: CustomElevatedButton(
        label: AppLocalizations.of(context)!.back_to_sign_in,
        onTap: () => Get.offAllNamed<dynamic>(FurneyRoutes.signIn),
      ),
    );
  }
}
