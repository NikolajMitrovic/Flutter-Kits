part of '../product_page.dart';

class _BuildFooter extends StatelessWidget {
  const _BuildFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);

    return Container(
      width: Screens.width(context),
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomElevatedButton(
              color: theme.cardColor,
              labelColor: themeProv.isDarkTheme
                  ? ColorDark.fontTitle
                  : ColorLight.fontTitle,
              onTap: () => Get.toNamed<dynamic>(BelilaRoutes.chat),
              label: AppLocalizations.of(context)!.contact_the_seller,
            ),
          ),
          const SizedBox(width: Const.margin),
          Expanded(
            child: CustomElevatedButton(
              onTap: () {
                showToast(msg: AppLocalizations.of(context)!.cart_added);
              },
              label: AppLocalizations.of(context)!.add_to_cart,
            ),
          ),
        ],
      ),
    );
  }
}
