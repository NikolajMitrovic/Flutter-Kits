part of '../sign_up_page.dart';


class _BuildLoginButton extends StatelessWidget {
  const _BuildLoginButton({
    Key? key,
  }) :  super(key: key);


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.already_have_an_account,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(width: Const.space5),
        InkWell(
          onTap: () => Get.toNamed<dynamic>(LestateRoutes.signIn),
          child: Text(
            AppLocalizations.of(context)!.log_in,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Const.accentColor,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
