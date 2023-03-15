part of '../profile_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor : theme.unselectedWidgetColor,
                backgroundImage: const CachedNetworkImageProvider(
                  Assets.profilePhoto,
                ),
              ),
              const SizedBox(width: Const.space15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jessica Veranda',
                      style: theme.textTheme.displayLarge,
                    ),
                    const SizedBox(height: Const.space5),
                    Text(
                      'jscvrnd19@gmail.com',
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(height: Const.space15),
                    CustomElevatedButton(
                      height: 30,
                      onTap: () => Get.toNamed<dynamic>(BarberaRoutes.profileEdit),
                      label: AppLocalizations.of(context)!.edit_profile,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.following),
                  child: Column(
                    children: [
                      Text('128', style: theme.textTheme.headlineMedium),
                      Text(
                        AppLocalizations.of(context)!.following,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.follower),
                  child: Column(
                    children: [
                      Text('640', style: theme.textTheme.headlineMedium),
                      Text(
                        AppLocalizations.of(context)!.follower,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  onTap: () => Get.toNamed<dynamic>(BarberaRoutes.like),
                  child: Column(
                    children: [
                      Text('240', style: theme.textTheme.headlineMedium),
                      Text(
                        AppLocalizations.of(context)!.likes,
                        style: theme.textTheme.titleSmall,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
