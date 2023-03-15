part of '../barbershop_page.dart';

class _AboutTabBarView extends StatelessWidget {
  const _AboutTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: Const.space25),
       const _BuildAbout(),
        const SizedBox(height: Const.space25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            AppLocalizations.of(context)!.service_on_days,
            style: theme.textTheme.displaySmall,
          ),
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
        const SizedBox(height: Const.space25),
      ],
    );
  }
}
