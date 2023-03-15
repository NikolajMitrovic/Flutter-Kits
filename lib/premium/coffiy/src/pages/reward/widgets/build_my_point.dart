part of '../reward_page.dart';

class _BuildMyPoint extends StatelessWidget {
  const _BuildMyPoint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Const.radius),
        color: theme.primaryColor,
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -25,
            right: -25,
            child: SvgPicture.asset(
              Illustrations.flower,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: Const.margin,
            right: Const.margin,
            top: 0,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${AppLocalizations.of(context)!.my_points}:',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '2400',
                      style: theme.textTheme.displayLarge?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                CustomElevatedButton(
                  onTap: ()=> Get.toNamed<dynamic>(CoffiyRoutes.redeem),
                  label: AppLocalizations.of(context)!.redeem_drinks,
                  width: 150,
                  color: const Color(0xFFF0B197),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
