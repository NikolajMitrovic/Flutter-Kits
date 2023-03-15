part of '../sign_in_page.dart';



class _BuildRegisterButton extends StatelessWidget {
  const _BuildRegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          AppLocalizations.of(context)!.dont_have_an_account,
          style: theme.textTheme.headlineMedium,
        ),
        const SizedBox(width: 5),
        InkWell(
          onTap: () => Get.toNamed<dynamic>(FoodiyRoutes.signup),
          child: Text(
            AppLocalizations.of(context)!.register,
            style: theme.textTheme.headlineMedium!.copyWith(
              color: ColorLight.primary,
            ),
          ),
        ),
      ],
    );
  }
}
