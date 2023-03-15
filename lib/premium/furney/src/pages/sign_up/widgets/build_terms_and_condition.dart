part of '../sign_up_page.dart';

class _BuildTermsAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomShakeTransition(
      duration: const Duration(milliseconds: 1700),
      child: Row(
        children: [
          SvgPicture.asset(
            CustomIcon.done,
            color: theme.primaryColor,
          ),
          const SizedBox(width: 5),
          AutoSizeText(
            AppLocalizations.of(context)!.i_have_accept,
            style: theme.textTheme.titleSmall,
          ),
          const SizedBox(width: 5),
          InkWell(
            onTap: () => showToast(
              msg: AppLocalizations.of(context)!.terms_and_conditions_clicked,
            ),
            child: AutoSizeText(
              AppLocalizations.of(context)!.terms_and_conditions,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
