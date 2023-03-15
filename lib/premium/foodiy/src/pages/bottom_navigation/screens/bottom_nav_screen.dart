part of '../bottom_nav_page.dart';

class FoodiyBottomNavScreen extends StatefulWidget {
  final int initialIndex;

  const FoodiyBottomNavScreen({Key? key, this.initialIndex = 0})
      : super(key: key);
  @override
  State<FoodiyBottomNavScreen> createState() => _FoodiyBottomNavScreenState();
}

class _FoodiyBottomNavScreenState extends State<FoodiyBottomNavScreen> {
  int _selectedIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    refreshTabController();
  }

  void refreshTabController() {
    setState(() {
      _selectedIndex = widget.initialIndex;
    });
  }

  final List<Widget> _bottomNavList = const [
    FoodiyHomeScreen(),
    FoodiyFavoriteScreen(),
    FoodiyOrderScreen(),
    FoodiyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeProv = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        children: _bottomNavList,
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        backgroundColor :
            themeProv.isDarkTheme ? ColorDark.card : ColorLight.background,
        onItemSelected: (value) {
          setState(() {
            _selectedIndex = value;
            _pageController!.animateToPage(
              value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(FeatherIcons.home),
            title: Text(
              AppLocalizations.of(context)!.home,
              style: theme.textTheme.headlineMedium!.copyWith(
                color: themeProv.isDarkTheme
                    ? ColorDark.fontTitle
                    : ColorLight.primary,
              ),
            ),
            activeColor: theme.primaryColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(FeatherIcons.heart),
            title: Text(
              AppLocalizations.of(context)!.favorite,
              style: theme.textTheme.headlineMedium!.copyWith(
                color: themeProv.isDarkTheme
                    ? ColorDark.fontTitle
                    : ColorLight.primary,
              ),
            ),
            activeColor: theme.primaryColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(FeatherIcons.shoppingBag),
            title: Text(
              AppLocalizations.of(context)!.order,
              style: theme.textTheme.headlineMedium!.copyWith(
                color: themeProv.isDarkTheme
                    ? ColorDark.fontTitle
                    : ColorLight.primary,
              ),
            ),
            activeColor: theme.primaryColor,
          ),
          BottomNavyBarItem(
            icon: const Icon(FeatherIcons.user),
            title: Text(
              AppLocalizations.of(context)!.profile,
              style: theme.textTheme.headlineMedium!.copyWith(
                color: themeProv.isDarkTheme
                    ? ColorDark.fontTitle
                    : ColorLight.primary,
              ),
            ),
            activeColor: theme.primaryColor,
          ),
        ],
      ),
    );
  }
}
