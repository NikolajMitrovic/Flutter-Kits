part of '../onboarding1_page.dart';

class _BuildSkipButton extends StatelessWidget {
  const _BuildSkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Const.space25,
      right: Const.margin,
      child: CustomTextButton(
        label: AppLocalizations.of(context)!.skip,
        onTap: () {
          showToast(msg: AppLocalizations.of(context)!.skip_button_clicked);
        },
      ),
    );
  }
}
