part of '../profile_page.dart';

class _HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final provider = Provider.of<ThemeProvider>(context);

    return Container(
      width: Screens.width(context),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      padding: const EdgeInsets.all(Const.space15),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: Screens.width(context) / 5.1,
                height: Screens.width(context) / 5.1,
                decoration: BoxDecoration(
                  color: theme.cardColor,
                  borderRadius: BorderRadius.circular(Const.radius),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        'https://i.pinimg.com/564x/7a/28/1c/7a281c79608aa90d65efd5fb1166137d.jpg'),
                  ),
                ),
              ),
              const SizedBox(width: Const.space12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Violet Evergarden',
                      style: theme.textTheme.displaySmall,
                      maxLines: 1,
                    ),
                    AutoSizeText('viola@example.co.id',
                        style: theme.textTheme.titleSmall),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    CustomIcon.done,
                    width: 15,
                    height: 15,
                    color: provider.isDarkTheme
                        ? ColorDark.fontTitle
                        : ColorLight.fontTitle,
                  ),
                  const SizedBox(width: Const.space12),
                  AutoSizeText(
                    AppLocalizations.of(context)!.verified,
                    style: theme.textTheme.titleSmall,
                    maxLines: 1,
                  ),
                ],
              ),
              CustomElevatedButton(
                width: 70,
                height: 30,
                onTap: () => Get.toNamed<dynamic>(FurneyRoutes.editProfile),
                label: AppLocalizations.of(context)!.edit,
              ),
            ],
          )
        ],
      ),
    );
  }
}
