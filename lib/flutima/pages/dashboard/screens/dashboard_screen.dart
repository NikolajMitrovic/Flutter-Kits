part of '../dashboard_page.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      initialIndex: 1,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mode = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: DefaultTabController(
        length: 3,initialIndex: 1,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 410,
                  forceElevated: innerBoxIsScrolled,
                  backgroundColor : theme.backgroundColor ,
                  actions: [
                    IconButton(
                      onPressed: () =>
                          Get.to<dynamic>(() => const SettingsScreen()),
                      icon: const Icon(IconlyLight.setting),
                      color: (mode.isDarkTheme == true)
                          ? ColorDark.fontTitle
                          : ColorLight.fontTitle,
                    ),
                    const SizedBox(width: 18),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25 * 3),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!.hi_folks,
                                style: theme.textTheme.displayLarge,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                AppLocalizations.of(context)!
                                    .explore_various_other_attractive_clean_and_unique_application_designs,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: ListView.builder(
                            itemCount: popularList(context).length,
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                            ),
                            itemBuilder: (context, index) {
                              final data = popularList(context)[index];
                              return Container(
                                width: 150,
                                margin: const EdgeInsets.only(right: 15),
                                child: InkWell(
                                  onTap: (data.isPremium == true)
                                      ? () => Get.toNamed<dynamic>(
                                            UIKitRoutes.uiDetail,
                                            arguments: data,
                                          )
                                      : () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: OctoImage(
                                          image: CachedNetworkImageProvider(
                                            data.detailImages?.first ?? '',
                                          ),
                                          width: 150,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        data.name ?? '',
                                        style: theme.textTheme.headlineMedium,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        data.features?.first.value ?? '',
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: theme.disabledColor,
                      labelStyle: theme.textTheme.bodyMedium,
                      unselectedLabelStyle: theme.textTheme.titleMedium,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                      ),
                      indicator: BoxDecoration(
                        color: theme.primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      tabs: [
                        Tab(text: AppLocalizations.of(context)!.all),
                        Tab(text: AppLocalizations.of(context)!.premium),
                        Tab(text: AppLocalizations.of(context)!.free),
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
                _TabBarBody(itemList: allUIList(context)),
                _TabBarBody(itemList: premiumList(context)),
                _TabBarBody(itemList: freeList(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
