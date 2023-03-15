part of '../sign_in_page.dart';

class _BuildForgotPasswordButton extends StatelessWidget {
  const _BuildForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShakeTransition(
      duration:const Duration(milliseconds: 1300),
      child: Align(
        child: CustomTextButton(
          fontSize: 13,
          label: AppLocalizations.of(context)!.forgot_password,
          onTap: () => Get.toNamed<dynamic>(FurneyRoutes.forgotPassword),
        ),
      ),
    );
  }
}
