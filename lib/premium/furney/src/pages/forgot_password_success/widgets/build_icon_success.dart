part of '../forgot_password_success_page.dart';

class _BuildIconSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CustomShakeTransition(
      child: SvgPicture.asset(
        CustomIcon.done,
        color: theme.primaryColor,
        width: Screens.width(context) / 4,
        height: Screens.width(context) / 4,
      ),
    );
  }
}
