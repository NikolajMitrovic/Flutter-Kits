part of '../sign_in_page.dart';

class _BuildSocialNetworkSign extends StatelessWidget {
  const _BuildSocialNetworkSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.or_log_in_with,
          style: theme.textTheme.headlineMedium,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                showToast(
                  msg: AppLocalizations.of(context)!.facebook_sign_in_tapped,
                  backgroundColor : const Color(0xFF5C94D4),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorLight.kFacebookColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  Const.facebook,
                  height: 30,
                ),
              ),
            ),
            const SizedBox(width: 20),
            InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                showToast(
                  msg: AppLocalizations.of(context)!.google_sign_in_tapped,
                  backgroundColor : const Color(0xFFDD4B39),
                );
              },
              child: Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorLight.kGoogleColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(Const.google, height: 30),
              ),
            )
          ],
        ),
      ],
    );
  }
}
