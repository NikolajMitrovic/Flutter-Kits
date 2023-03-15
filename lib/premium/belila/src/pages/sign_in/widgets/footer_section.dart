part of '../sign_in_page.dart';

class _FooterSection extends StatelessWidget {
  final VoidCallback? onSignUpTap;
  final Duration? duration;

  const _FooterSection({Key? key, this.onSignUpTap, this.duration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ShakeTransition(
      duration: duration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: prefer_interpolation_to_compose_strings
          Text(AppLocalizations.of(context)!.dont_have_an_account + '?',
              style: theme.textTheme.bodyMedium),
        const  SizedBox(width: Const.space8),
          InkWell(
              onTap: onSignUpTap,
              child: Text(AppLocalizations.of(context)!.sign_up,
                  style: theme.textTheme.headlineMedium)),
        ],
      ),
    );
  }
}
