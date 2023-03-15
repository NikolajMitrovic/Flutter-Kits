part of '../on_boarding_page.dart';

class _BuildGetStartedButton extends StatelessWidget {
  final VoidCallback onGetStartedTap;

  const _BuildGetStartedButton({
    Key? key,
    required this.onGetStartedTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: Const.margin,
      right: Const.margin,
      height: 45,
      child: CustomElevatedButton(
        label: AppLocalizations.of(context)!.get_started,
        onTap: onGetStartedTap,
      ),
    );
  }
}
