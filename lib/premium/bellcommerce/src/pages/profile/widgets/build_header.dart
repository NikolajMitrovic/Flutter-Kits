part of '../profile_page.dart';

class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      height: 325,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(Const.radius),
                bottomRight: Radius.circular(Const.radius),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 35),
                  Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor : Colors.white,
                      backgroundImage: CachedNetworkImageProvider(
                        'https://i.pinimg.com/564x/f3/fd/da/f3fddac6fb31791d076a64824b024429.jpg',
                      ),
                    ),
                  ),
                  const SizedBox(height: Const.space8),
                  Text(
                    'Jessica Veranda',
                    style: theme.textTheme.displayMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: Const.space8),
                  Text(
                    'veranda@mail.com',
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                elevation: 8,
                child: Center(
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () => Get.toNamed<dynamic>(
                          BellcommerceRoutes.profileDetail,
                        ),
                        leading: Icon(
                          FeatherIcons.user,
                          color: theme.primaryColor,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.account,
                          style: theme.textTheme.bodyMedium,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                      ListTile(
                        onTap: () => Get.toNamed<dynamic>(
                          BellcommerceRoutes.address,
                        ),
                        leading: Icon(
                          FeatherIcons.mapPin,
                          color: theme.primaryColor,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.address,
                          style: theme.textTheme.bodyMedium,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
