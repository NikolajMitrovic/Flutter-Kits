part of '../order_page.dart';

class BelilaOrderScreen extends StatefulWidget {
  final int initialIndex;

  const BelilaOrderScreen({Key? key, this.initialIndex = 0}) : super(key: key);
  @override
  State<BelilaOrderScreen> createState() => _BelilaOrderScreenState();
}

class _BelilaOrderScreenState extends State<BelilaOrderScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;
  bool isFromPaymentPage = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 8,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
    if (Get.arguments is bool) {
      isFromPaymentPage = Get.arguments as bool;
    } else {
      isFromPaymentPage = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);
    return WillPopScope(
      onWillPop: () async {
        await Get.offAllNamed<dynamic>(BelilaRoutes.profile);
        return false;
      },
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          title: AppLocalizations.of(context)!.my_shopping,
          leadingOntap: () => Get.offAllNamed<dynamic>(BelilaRoutes.profile),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: theme.primaryColor,
            isScrollable: true,
            labelColor: themeProv.isDarkTheme
                ? ColorDark.fontTitle
                : ColorLight.fontTitle,
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: theme.textTheme.headlineMedium,
            unselectedLabelStyle: theme.textTheme.titleMedium,
            tabs: [
              Tab(
                child: _BuildBadgeTab(
                    label: AppLocalizations.of(context)!.all, value: 0),
              ),
              Tab(
                child: _BuildBadgeTab(
                  label: AppLocalizations.of(context)!.waiting,
                  value: 2,
                ),
              ),
              // ignore: lines_longer_than_80_chars
              Tab(
                child: _BuildBadgeTab(
                  label:
                      AppLocalizations.of(context)!.payment_is_being_verified,
                  value: 3,
                ),
              ),
              Tab(
                child: _BuildBadgeTab(
                  label: AppLocalizations.of(context)!.packed,
                  value: 2,
                ),
              ),
              Tab(
                child: _BuildBadgeTab(
                  label: AppLocalizations.of(context)!.on_delivery,
                  value: 4,
                ),
              ),
              Tab(
                child: _BuildBadgeTab(
                  label: AppLocalizations.of(context)!.success,
                  // value: _order.getBadgeCount('success') ?? 0,
                  value: 0,
                ),
              ),
              Tab(
                child: _BuildBadgeTab(
                  label: AppLocalizations.of(context)!.cancelled,
                  // value: _order.getBadgeCount('cancel') ?? 0,
                  value: 0,
                ),
              ),
              Tab(
                child: _BuildBadgeTab(
                  label: AppLocalizations.of(context)!.repayment,
                  value: 2,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
             _BuildBody(itemList: allOrderList),
             _BuildBody(itemList: waitingOrderList),
             _BuildBody(itemList: processOrderList),
             _BuildBody(itemList: packagingOrderList),
             _BuildBody(itemList: onDeliveryOrderList),
             _BuildBody(itemList: successOrderList),
             _BuildBody(itemList: failedOrderList),
             _BuildBody(itemList: cancelOrderList),
            
          ],
        ),
      ),
    );
  }
}
