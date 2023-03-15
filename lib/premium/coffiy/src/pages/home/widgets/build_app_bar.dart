part of '../home_page.dart';

class _BuildAppBar extends StatelessWidget {
  const _BuildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 120,
      padding: const EdgeInsets.fromLTRB(
        Const.margin,
        70,
        Const.margin,
        Const.space12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${AppLocalizations.of(context)!.good_morning}\n',
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: 'Jessica Veranda',
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () => Get.toNamed<dynamic>(CoffiyRoutes.cart),
                icon: const Icon(IconlyLight.buy),
              ),
              IconButton(
                onPressed: () => Get.toNamed<dynamic>(CoffiyRoutes.profile),
                icon: const Icon(IconlyLight.profile),
       
              )
            ],
          )
        ],
      ),
    );
  }
}
