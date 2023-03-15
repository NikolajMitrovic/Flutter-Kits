part of '../on_boarding_page.dart';


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
        onTap: () =>Get.offAllNamed<dynamic>(BarberaRoutes.socialNetwork),
        label: AppLocalizations.of(context)!.skip,
        fontColor: Colors.white,
      ),
    );
  }
}
