part of '../social_network_page.dart';

class _BuildSignInEmailButton extends StatelessWidget {
  const _BuildSignInEmailButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return Positioned(
      left: 0,
      right: 0,
      top: 150,
      bottom: 90,
      child: Center(
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.food_shop,
              style: theme.textTheme.displayLarge!.copyWith(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            Text(
              AppLocalizations.of(context)!.log_in_to_continue,
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: CustomElevatedButton(
                onTap: () =>
                    Get.offAllNamed<dynamic>(FoodiyRoutes.signinwithemail),
                label: AppLocalizations.of(context)!.log_in,
              ),
            )
          ],
        ),
      ),
    );
  }
}
