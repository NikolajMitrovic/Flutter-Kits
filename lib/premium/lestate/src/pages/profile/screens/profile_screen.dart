part of '../profile_page.dart';

class LestateProfileScreen extends StatefulWidget {
  const LestateProfileScreen({Key? key}) : super(key: key);

  @override
  State<LestateProfileScreen> createState() => _LestateProfileScreenState();
}

class _LestateProfileScreenState extends State<LestateProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  VoidCallback? _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
    return null;
  }

  List<Widget> _profileTab(BuildContext context) => [
        Tab(text: AppLocalizations.of(context)!.settings),
        Tab(text: AppLocalizations.of(context)!.rent_history),
      ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: ListView(
        children: [
          const _BuildHeader(),
          TabBar(
            controller: _tabController,
            indicatorColor: theme.primaryColor,
            labelColor: theme.primaryColor,
            unselectedLabelColor: theme.disabledColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: _profileTab(context),
          ),
          Center(
            child: [
              const _SettingTab(),
              const _RentHistoryTab(),
            ][_tabController.index],
          ),
        ],
      ),
    );
  }
}
