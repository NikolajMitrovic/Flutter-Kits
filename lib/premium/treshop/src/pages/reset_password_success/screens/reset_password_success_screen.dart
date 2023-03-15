part of '../reset_password_success_page.dart';

class TreshopResetPasswordSuccessScreen extends StatelessWidget {
  const TreshopResetPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          CustomShakeTransition(
            child: SvgPicture.asset(
              Illustrations.resetPasswordEmail,
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 800),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.check_your_email,
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall,
              ),
            ),
          ),
          const SizedBox(height: Const.space12),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 850),
            child: Center(
              child: Text(
                AppLocalizations.of(context)!
                    .we_have_sent_a_password_recovery_instruction_to_your_email,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: Const.space25),
          CustomShakeTransition(
            duration: const Duration(milliseconds: 90),
            child: CustomElevatedButton(
              onTap: () {
                Get.toNamed<dynamic>(TreshopRoutes.newPassword);
              },
              label: AppLocalizations.of(context)!.ok,
            ),
          ),
        ],
      ),
    );
  }
}
