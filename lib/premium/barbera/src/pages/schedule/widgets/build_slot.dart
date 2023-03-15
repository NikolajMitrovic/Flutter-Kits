part of '../schedule_page.dart';

class _BuildSlot extends StatefulWidget {
  const _BuildSlot({
    Key? key,
  }) : super(key: key);

  @override
  State<_BuildSlot> createState() => __BuildSlotState();
}

class __BuildSlotState extends State<_BuildSlot> {
  late Widget navigate;

  // ignore: unused_field
  bool _ready = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.select_date,
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: Const.space12),
          Wrap(
            children: slotList.map((e) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    // ignore: avoid_function_literals_in_foreach_calls
                    slotList.forEach((element) => element.isSelected = false);
                    e.isSelected = true;
                    if (e.isSelected == true && e.isBooked == false) {
                      setState(() {
                        _ready = true;
                        // navigate = BookingDetailPage();
                      });
                    }
                    if (e.isSelected == true && e.isBooked == true) {
                      setState(() {
                        _ready = true;
                        // navigate = BookingFailedPage();
                      });
                    }
                    if (e.isSelected == false && e.isBooked == false) {
                      setState(() {
                        _ready = false;
                      });
                    }
                    if (e.isSelected == false && e.isBooked == true) {
                      setState(() {
                        _ready = false;
                      });
                    }
                  });
                },
                child: (e.isAvailable == true)
                    ? Container(
                        width: 80,
                        padding: const EdgeInsets.all(6),
                        child: (e.isSelected == true)
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    e.time ?? '',
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  color: (e.isAvailable == true)
                                      ? theme.cardColor
                                      : theme.errorColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    e.time ?? '',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        color: (e.isAvailable == true)
                                            ? theme.unselectedWidgetColor
                                            : theme.backgroundColor ),
                                  ),
                                ),
                              ),
                      )
                    : Container(width: 0),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
