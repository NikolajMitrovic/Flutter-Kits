part of '../schedule_page.dart';

class _BuildBarber extends StatefulWidget {
  const _BuildBarber({
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildBarber> createState() => __BuildBarberState();
}

class __BuildBarberState extends State<_BuildBarber> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Text(
            AppLocalizations.of(context)!.select_date,
            style: theme.textTheme.headlineMedium,
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: Screens.width(context),
          height: 120,
          child: ListView.builder(
            itemCount: topBarberList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final barber = topBarberList[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    // ignore: avoid_function_literals_in_foreach_calls
                    topBarberList.forEach((e) => e.isSelected = false);
                    barber.isSelected = true;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: Const.space15),
                  width: 75,
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: (barber.isSelected == true)
                                ? Colors.green
                                : theme.primaryColor,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                              CachedNetworkImageProvider(barber.photo ?? ''),
                        ),
                      ),
                      const SizedBox(height: Const.space5),
                      Center(
                        child: Text(
                          barber.name ?? '',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
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
