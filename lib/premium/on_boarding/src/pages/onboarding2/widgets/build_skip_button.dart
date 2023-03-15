part of '../onboarding2_page.dart';

class _BuildSkipButton extends StatelessWidget {
  final int currentIndex;

  const _BuildSkipButton({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Const.space25,
      right: Const.margin,
      child: AnimatedOpacity(
        opacity: (currentIndex == 2) ? 0 : 1,
        duration: const Duration(milliseconds: 500),
        child: CustomTextButton(
          label: AppLocalizations.of(context)!.skip,
          onTap: (currentIndex == 2)
              ? () {}
              : () {
                  showToast(
                    msg: AppLocalizations.of(context)!.skip_button_clicked,
                  );
                },
        ),
      ),
    );
  }
}
