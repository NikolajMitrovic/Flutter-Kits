part of '../order_page.dart';

class CoffiyOrderScreen extends StatelessWidget {
  const CoffiyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.my_orders,
          enableLeading: false,
          bottom: TabBar(
            labelStyle: theme.textTheme.displaySmall,
            unselectedLabelStyle: theme.textTheme.titleMedium,
            labelColor: theme.primaryColor,
            unselectedLabelColor: theme.disabledColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: AppLocalizations.of(context)!.process),
              Tab(text: AppLocalizations.of(context)!.history),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _OrderTabView(orderList: processOrderList),
            _OrderTabView(orderList: historyOrderList, isHistoryOrder: true),
          ],
        ),
      ),
    );
  }
}
