part of '../onboarding9_page.dart';

class _BuildSkipButton extends StatelessWidget {
  final int? index;

  const _BuildSkipButton({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (index == 2)
        ? const SizedBox()
        : Positioned(
            top: Const.space25,
            right: Const.margin,
            child: ShakeTransition(
              duration: const Duration(milliseconds: 200),
              child: CustomTextButton(
                label: AppLocalizations.of(context)!.skip,
                onTap: () {},
              ),
            ),
          );
  }
}
