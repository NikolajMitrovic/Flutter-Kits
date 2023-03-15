part of '../inbox_page.dart';

class _BuildOnlineBarber extends StatelessWidget {
  const _BuildOnlineBarber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            AppLocalizations.of(context)!.online_barber,
            style: theme.textTheme.displaySmall,
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: Screens.width(context),
          height: 120,
          child: ListView.builder(
            itemCount: onlineBarber.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final barber = onlineBarber[index];
              return _BuildBarberCard(chat: barber);
            },
          ),
        ),
      ],
    );
  }
}
