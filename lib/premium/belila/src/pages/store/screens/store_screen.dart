part of '../store_page.dart';

class BelilaStoreScreen extends StatefulWidget {
  const BelilaStoreScreen({Key? key}) : super(key: key);
  @override
  State<BelilaStoreScreen> createState() => _BelilaStoreScreenState();
}

class _BelilaStoreScreenState extends State<BelilaStoreScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late StoreDetailModel store = mockStore;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  List<Widget> _tabList(BuildContext context) => [
        Tab(text: AppLocalizations.of(context)!.product),
        Tab(text: AppLocalizations.of(context)!.review),
      ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.shop_details,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch<dynamic>(
                context: context,
                delegate: BelilaSearchAllProductScreen(),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Const.margin,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor : theme.primaryColor,
                    backgroundImage: CachedNetworkImageProvider(
                      store.image ?? Const.image,
                    ),
                  ),
                  const SizedBox(width: Const.space8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          store.name ?? '',
                          maxLines: 1,
                          style: theme.textTheme.displaySmall,
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: Const.space25),
            TabBar(
              controller: _tabController,
              tabs: _tabList(context),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: theme.textTheme.headlineMedium,
              unselectedLabelStyle: theme.textTheme.bodyMedium,
              labelColor: themeProv.isDarkTheme
                  ? ColorDark.fontTitle
                  : ColorLight.fontTitle,
              unselectedLabelColor: themeProv.isDarkTheme
                  ? ColorDark.fontSubtitle
                  : ColorLight.fontSubtitle,
            ),
            const SizedBox(height: Const.space25),
            Center(
              child: [
                const StoreProductTab(),
                const StoreReviewTab(),
              ][_tabController.index],
            ),
          ],
        ),
      ),
    );
  }
}
