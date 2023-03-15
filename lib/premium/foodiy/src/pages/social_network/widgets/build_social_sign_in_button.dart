part of '../social_network_page.dart';

class _BuildSocialSignInButton extends StatelessWidget {
  const _BuildSocialSignInButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned(
      bottom: Const.margin,
      left: Const.margin,
      right: Const.margin,
      height: 45,
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                showToast(
                  msg: AppLocalizations.of(context)!.google_sign_in_tapped,
                  backgroundColor : const Color(0xFFDD4B39),
                );
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: const BorderSide(
                  color: Color(0xFFDD4B39),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Const.google, height: 30),
                  const SizedBox(width: 10),
                  Text(
                    AppLocalizations.of(context)!.google,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFFDD4B39),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                showToast(
                  msg: AppLocalizations.of(context)!.facebook_sign_in_tapped,
                  backgroundColor : const Color(0xFF5C94D4),
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xFF5C94D4),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Const.facebook, height: 30),
                  const SizedBox(width: 10),
                  Text(
                    AppLocalizations.of(context)!.facebook,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF5C94D4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
