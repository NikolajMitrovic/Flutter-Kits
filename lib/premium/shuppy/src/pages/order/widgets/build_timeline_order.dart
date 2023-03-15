part of '../order_page.dart';

class _BuildOrderTimeline extends StatelessWidget {
  final OrderStatus? status;

  const _BuildOrderTimeline({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color pendingLineColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.pending:
          return theme.primaryColor;
        case OrderStatus.process:
          return theme.primaryColor;
        case OrderStatus.onDelivery:
          return theme.primaryColor;
        case OrderStatus.done:
          return theme.primaryColor;
        default:
          return theme.disabledColor;
      }
    }

    Color pendingIndicatorColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.pending:
          return Colors.white;
        case OrderStatus.process:
          return Colors.white;
        case OrderStatus.onDelivery:
          return Colors.white;
        case OrderStatus.done:
          return Colors.white;
        default:
          return theme.disabledColor;
      }
    }

    Color processLineColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.process:
          return theme.primaryColor;
        case OrderStatus.onDelivery:
          return theme.primaryColor;
        case OrderStatus.done:
          return theme.primaryColor;
        default:
          return theme.disabledColor;
      }
    }

    Color processIndicatorColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.process:
          return Colors.white;
        case OrderStatus.onDelivery:
          return Colors.white;
        case OrderStatus.done:
          return Colors.white;
        default:
          return theme.disabledColor;
      }
    }

    Color onDeliveryLineColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.onDelivery:
          return theme.primaryColor;
        case OrderStatus.done:
          return theme.primaryColor;
        default:
          return theme.disabledColor;
      }
    }

    Color onDeliveryIndicatorColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.onDelivery:
          return Colors.white;
        case OrderStatus.done:
          return Colors.white;
        default:
          return theme.disabledColor;
      }
    }

    Color doneLineColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.done:
          return theme.primaryColor;
        default:
          return theme.disabledColor;
      }
    }

    Color doneIndicatorColor(OrderStatus val) {
      switch (val) {
        case OrderStatus.done:
          return Colors.white;
        default:
          return theme.disabledColor;
      }
    }

    return Container(
      width: double.infinity,
      constraints:const BoxConstraints(
        maxHeight: 100,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              isFirst: true,
              lineXY: .2,
              afterLineStyle: LineStyle(
                color: pendingLineColor(status!),
              ),
              indicatorStyle: IndicatorStyle(
                height: 30,
                width: 15,
                color: pendingLineColor(status!),
                iconStyle: IconStyle(
                  color: pendingIndicatorColor(status!),
                  iconData: Icons.done,
                ),
              ),
              endChild: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.topCenter,
                padding:const EdgeInsets.only(top: 10),
                child: Text(
                  AppLocalizations.of(context)!.waiting_for_payment,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              lineXY: .2,
              beforeLineStyle: LineStyle(
                color: processLineColor(status!),
              ),
              afterLineStyle: LineStyle(
                color: processLineColor(status!),
              ),
              indicatorStyle: IndicatorStyle(
                height: 30,
                width: 15,
                color: processLineColor(status!),
                iconStyle: IconStyle(
                  color: processIndicatorColor(status!),
                  iconData: Icons.done,
                ),
              ),
              endChild: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  AppLocalizations.of(context)!.packaging,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              lineXY: .2,
              beforeLineStyle: LineStyle(
                color: onDeliveryLineColor(status!),
              ),
              afterLineStyle: LineStyle(
                  color: onDeliveryLineColor(status!)),
              indicatorStyle: IndicatorStyle(
                height: 30,
                width: 15,
                color: onDeliveryLineColor(status!),
                iconStyle: IconStyle(
                  color: onDeliveryIndicatorColor(status!),
                  iconData: Icons.done,
                ),
              ),
              endChild: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  AppLocalizations.of(context)!.on_delivery,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: TimelineTile(
              axis: TimelineAxis.horizontal,
              alignment: TimelineAlign.center,
              isLast: true,
              lineXY: .2,
              beforeLineStyle: LineStyle(
                color: doneLineColor(status!),
              ),
              afterLineStyle: LineStyle(color: theme.primaryColor),
              indicatorStyle: IndicatorStyle(
                height: 30,
                width: 15,
                color:doneLineColor(status!),
                iconStyle: IconStyle(
                  color:doneIndicatorColor(status!),
                  iconData: Icons.done,
                ),
              ),
              endChild: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  AppLocalizations.of(context)!.done,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
