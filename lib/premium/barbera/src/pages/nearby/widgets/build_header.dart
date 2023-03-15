part of '../nearby_page.dart';

class _BuildHeader extends StatelessWidget {
  final TextEditingController controller;

  const _BuildHeader({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.your_location,
                        style: theme.textTheme.titleSmall),
                    const SizedBox(height: Const.space5),
                    Row(
                      children: [
                        Icon(
                          FeatherIcons.mapPin,
                          color: theme.primaryColor,
                          size: 15,
                        ),
                        const SizedBox(width: Const.space5),
                        Text(
                          'San Fransisco City',
                          style: theme.textTheme.displaySmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => _changeAddressBottomSheet(
                  context,
                  controller: controller,
                ),
                borderRadius: BorderRadius.circular(Const.radius),
                child: Row(
                  children: [
                    Icon(
                      FeatherIcons.edit,
                      color: theme.primaryColor,
                      size: 15,
                    ),
                    const SizedBox(width: Const.space5),
                    Text(
                      AppLocalizations.of(context)!.change,
                      style: theme.textTheme.titleSmall
                          ?.copyWith(color: theme.primaryColor),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: Const.space25),
          InkWell(
            onTap: () => Get.toNamed<dynamic>(BarberaRoutes.search),
            child: Container(
              width: double.infinity,
              height: 45,
              padding: const EdgeInsets.symmetric(
                horizontal: Const.space12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: theme.disabledColor),
                color: theme.disabledColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: Row(
                children: [
                  Icon(
                    FeatherIcons.search,
                    color: theme.primaryColor,
                  ),
                  const SizedBox(width: Const.space12),
                  Text(
                    AppLocalizations.of(context)!.search_for_barbershop_name,
                    style: theme.textTheme.titleMedium?.copyWith(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
