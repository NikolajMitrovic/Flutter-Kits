part of '../sign_in_page.dart';


class _BuildRegisterButton extends StatelessWidget {
  const _BuildRegisterButton({
    Key? key,
  }) :  super(key: key);


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLocalizations.of(context)!.dont_have_an_account,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(width: Const.space5),
        InkWell(
          onTap: () => Get.toNamed<dynamic>(LestateRoutes.signUp),
          child: Text(
            AppLocalizations.of(context)!.sign_up,
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
