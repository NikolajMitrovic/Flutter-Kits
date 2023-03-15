part of '../sign_in_page.dart';

class _FooterSection extends StatelessWidget {
  final VoidCallback? onGoogleTap;
  final VoidCallback? onFacebookTap;
  final VoidCallback? onSignUpTap;

  const _FooterSection(
      {Key? key, this.onGoogleTap, this.onFacebookTap, this.onSignUpTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomShakeTransition(
              duration: const Duration(milliseconds: 1200),
              child: CustomSocialButton(
                color: Colors.white,
                label: AppLocalizations.of(context)!.google,
                logo: Images.logoGoogle,
                onTap: onGoogleTap,
              ),
            )),
            const SizedBox(width: Const.space12),
            Expanded(
                child: CustomShakeTransition(
              duration: const Duration(milliseconds: 1300),
              child: CustomSocialButton(
                color: const Color(0xFF334FE0),
                label: AppLocalizations.of(context)!.facebook,
                logo: Images.logoFacebook,
                onTap: onFacebookTap,
              ),
            ))
          ],
        ),
        const SizedBox(height: Const.space25),
        CustomFadeTransition(
          duration: const Duration(milliseconds: 1400),
          axis: Axis.vertical,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.dont_have_an_account,
                  style: theme.textTheme.titleMedium),
              const SizedBox(width: 5),
              CustomTextButton(
                label: AppLocalizations.of(context)!.sign_up,
                onTap: onSignUpTap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
