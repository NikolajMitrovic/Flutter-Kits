part of '../sign_up_page.dart';


class _BuildSignInButton extends StatelessWidget {
  const _BuildSignInButton({
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
          onTap: Get.back,
          child: Text(
            AppLocalizations.of(context)!.sign_in,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
