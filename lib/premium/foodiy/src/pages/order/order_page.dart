import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/in_progress/in_progress_tab.dart';
import 'package:ultimate_bundle/premium/foodiy/src/pages/order/past_order/past_order_tab.dart';

class FoodiyOrderScreen extends StatefulWidget {
  const FoodiyOrderScreen({Key? key}) : super(key: key);
  @override
  State<FoodiyOrderScreen> createState() => _FoodiyOrderScreenState();
}

class _FoodiyOrderScreenState extends State<FoodiyOrderScreen>
    with SingleTickerProviderStateMixin {
  ScrollController? _scrollViewController;
  TabController? _tabController;
  bool _showAppbar = true;
  bool isScrollingDown = false;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(_handleTabSelection);

    _scrollViewController!.addListener(() {
      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  void _handleTabSelection() {
    if (_tabController!.indexIsChanging) {
      setState(() {});
    }
  }

  List<Widget> _orderTab(BuildContext context) => [
        Tab(text: AppLocalizations.of(context)!.in_progress),
        Tab(text: AppLocalizations.of(context)!.past_orders),
      ];

  @override
  void dispose() {
    _scrollViewController!.dispose();
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        buildMainContent(theme),
        if (_showAppbar) buildCollapseAppBar(theme) else const SizedBox(),
      ],
    );
  }

  Positioned buildCollapseAppBar(ThemeData theme) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: 85,
      child: AnimatedContainer(
        height: _showAppbar ? 85.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        child: Container(
          color: theme.backgroundColor ,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.only(left: Const.margin, bottom: 15),
          child: Text(
            AppLocalizations.of(context)!.your_orders,
            style: theme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }

  Positioned buildMainContent(ThemeData theme) {
    return Positioned.fill(
      child: SingleChildScrollView(
          controller: _scrollViewController,
          padding: const EdgeInsets.fromLTRB(
            Const.margin,
            100,
            Const.margin,
            Const.margin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                controller: _tabController,
                indicatorColor: theme.primaryColor,
                labelColor: theme.primaryColor,
                unselectedLabelColor: theme.disabledColor,
                isScrollable: true,
                tabs: _orderTab(context),
              ),
              Center(
                child: const [
                  InProgressTab(),
                  PastOrderTab(),
                ][_tabController!.index],
              )
            ],
          )),
    );
  }
}
