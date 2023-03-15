part of '../barber_page.dart';

class BarberaBarberScreen extends StatefulWidget {
  const BarberaBarberScreen({Key? key}) : super(key: key);

  @override
  State<BarberaBarberScreen> createState() => _BarberaBarberScreenState();
}

class _BarberaBarberScreenState extends State<BarberaBarberScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late BarberModel _args;
  final String _backgroundImage =
      'https://i.pinimg.com/564x/b5/95/29/b59529b48ce9523c2375610eda728ace.jpg';
  bool _isBookmarked = false;

  @override
  void initState() {
    super.initState();
    _args = Get.arguments as BarberModel;
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  List<Widget> barberTabViewList(BuildContext context) => [
        Tab(text: AppLocalizations.of(context)!.basic_info),
        Tab(text: AppLocalizations.of(context)!.portfolio),
        Tab(text: AppLocalizations.of(context)!.review),
      ];

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  Future<void> _launchPhoneCall(String number) async {
    final Uri phoneCall = Uri(scheme: 'tel',path: number);
    await launchUrl(phoneCall);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.profile,
        actions: [
          IconButton(
            icon: Icon(_isBookmarked ? Icons.bookmark : Icons.bookmark_border),
            color: theme.primaryColor,
            onPressed: () {
              setState(() => _isBookmarked = !_isBookmarked);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          _BuildHeader(
            backgroundImage: _backgroundImage,
            args: _args,
          ),
          const SizedBox(height: Const.space15),
          _BuildBarberInfo(args: _args),
          const SizedBox(height: Const.space25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _BuildFeatureTile(
                icon: FeatherIcons.messageCircle,
                label: AppLocalizations.of(context)!.chat,
                onTap: () => Get.toNamed<dynamic>(BarberaRoutes.chat,
                    arguments: recentChats.first),
              ),
              _BuildFeatureTile(
                icon: FeatherIcons.phoneCall,
                label: AppLocalizations.of(context)!.call,
                onTap: () => _launchPhoneCall('081353020948'),
              ),
              _BuildFeatureTile(
                icon: FeatherIcons.map,
                label: AppLocalizations.of(context)!.direction,
                onTap: () {
                  // ignore: todo
                  //TODO: Direction
                },
              ),
              _BuildFeatureTile(
                icon: FeatherIcons.calendar,
                label: AppLocalizations.of(context)!.book_now,
                onTap: () => Get.toNamed<dynamic>(BarberaRoutes.bookingService),
              ),
            ],
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: theme.primaryColor,
            labelColor: theme.primaryColor,
            unselectedLabelColor: theme.disabledColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: barberTabViewList(context),
          ),
          Center(
            child: [
              _BasicInfoTabBarView(barber: _args),
              _PortfolioTabBarView(barber: _args),
              const _ReviewTabBarView()
            ][_tabController.index],
          ),
        ],
      ),
    );
  }
}
