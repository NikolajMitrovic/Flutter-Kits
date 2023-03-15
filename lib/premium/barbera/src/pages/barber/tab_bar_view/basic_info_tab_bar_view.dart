part of '../barber_page.dart';

class _BasicInfoTabBarView extends StatelessWidget {
  final BarberModel barber;

  const _BasicInfoTabBarView({Key? key, required this.barber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Const.space25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.business_name,
                  style: theme.textTheme.bodyLarge),
              Text(AppLocalizations.of(context)!.start_from,
                  style: theme.textTheme.bodyLarge),
            ],
          ),
        ),
        const SizedBox(height: Const.space12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Redbox Barber', style: theme.textTheme.titleSmall),
              Text(
                NumberFormat.currency(
                  symbol: r'$',
                  decimalDigits: 0,
                ).format(25.99),
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        const SizedBox(height: Const.space15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(AppLocalizations.of(context)!.opening_hours,
              style: theme.textTheme.bodyLarge),
        ),
        const SizedBox(height: Const.space12),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.monday,
          open: '9:00am',
          close: '10:00pm',
          isClose: false,
        ),
        const SizedBox(height: Const.space5),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.tuesday,
          open: '9:00am',
          close: '10:00pm',
          isClose: false,
        ),
        const SizedBox(height: Const.space5),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.wednesday,
          open: '9:00am',
          close: '10:00pm',
          isClose: false,
        ),
        const SizedBox(height: Const.space5),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.thursday,
          open: '9:00am',
          close: '10:00pm',
          isClose: false,
        ),
        const SizedBox(height: Const.space5),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.friday,
          open: '1:00pm',
          close: '15:00pm',
          isClose: false,
        ),
        const SizedBox(height: Const.space5),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.saturday,
          open: '9:00am',
          close: '10:00pm',
          isClose: true,
        ),
        const SizedBox(height: Const.space5),
        _BuildSchedule(
          day: AppLocalizations.of(context)!.sunday,
          open: '9:00am',
          close: '10:00pm',
          isClose: true,
        ),
        const SizedBox(height: Const.space15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: SizedBox(
            width: Screens.width(context),
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: Const.space25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.address,
                          style: theme.textTheme.bodyLarge,
                        ),
                        const SizedBox(height: Const.space5),
                        Text(
                          barber.address ?? '',
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(Assets.map),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: Const.space15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            AppLocalizations.of(context)!.photos,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: Screens.width(context),
          height: 72,
          child: ListView.builder(
            itemCount: allGalleryList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 18),
            itemBuilder: (context, index) {
              final gallery = allGalleryList[index];
              return GestureDetector(
                onTap: () => Get.toNamed<dynamic>(
                  BarberaRoutes.gallery,
                  arguments: gallery,
                ),
                child: Container(
                  width: 72,
                  height: 72,
                  padding: const EdgeInsets.fromLTRB(50, 8, 8, 50),
                  margin: const EdgeInsets.only(right: Const.space15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image:
                          CachedNetworkImageProvider(gallery.thumbnail ?? ''),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SvgPicture.asset(
                    Assets.multipleImage,
                    width: 18,
                    height: 18,
                    color: theme.disabledColor.withOpacity(.8),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
