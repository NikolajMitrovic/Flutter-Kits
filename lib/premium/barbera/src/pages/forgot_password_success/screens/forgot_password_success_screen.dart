part of '../forgot_password_success_page.dart';

class BarberaForgotPasswordSuccess extends StatelessWidget {
  const BarberaForgotPasswordSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.email,
              width: 300,
            ),
            const SizedBox(height: Const.space25),
            Text(
              AppLocalizations.of(context)!.check_your_email,
              style: theme.textTheme.displaySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space12),
            Text(
              AppLocalizations.of(context)!
                  .we_have_sent_a_password_recover_instructions_to_your_email,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              onTap: () {
                showToast(
                    msg: AppLocalizations.of(context)!.open_email_app_on_click);
              },
              label: AppLocalizations.of(context)!.open_email_app,
            ),
            const SizedBox(height: Const.space15),
            CustomTextButton(
              onTap: () => Get.offAllNamed<dynamic>(BarberaRoutes.createNewPassword),
              label: AppLocalizations.of(context)!.skip_I_ll_confirm_later,
            ),
            const Spacer(),
            SizedBox(
              width: Screens.width(context) / 1.2,
              child: Text(
                AppLocalizations.of(context)!
                    .did_not_receive_the_email_check_your_spam_filter_or,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            CustomTextButton(
              onTap: Get.back,
              label: AppLocalizations.of(context)!.try_another_email_address,
              fontColor: theme.primaryColor,
              fontSize: 14,
            ),
            const SizedBox(height: Const.space12),
          ],
        ),
      ),
    );
  }
}
