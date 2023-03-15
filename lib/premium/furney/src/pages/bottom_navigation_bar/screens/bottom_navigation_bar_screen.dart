part of '../bottom_navigation_bar_page.dart';

class FurneyBottomNavigationBarScreen extends StatefulWidget {
  final int initialIndex;

  const FurneyBottomNavigationBarScreen({Key? key, this.initialIndex = 0})
      : super(key: key);

  @override
  State<FurneyBottomNavigationBarScreen> createState() =>
      _FurneyBottomNavigationBarScreenState();
}

class _FurneyBottomNavigationBarScreenState extends State<FurneyBottomNavigationBarScreen> {
  int _selectedIndex = 0;
  late PageController _controller;
  DateTime? _currentBackPressTime;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.initialIndex);
    refreshTabController();
  }

  void refreshTabController() {
    setState(() => _selectedIndex = widget.initialIndex);
  }

  Future<bool> _willPopCallback(BuildContext context) async {
    final now = DateTime.now();
    if (_selectedIndex != 1) {
      if (_currentBackPressTime == null ||
          now.difference(_currentBackPressTime!) > const Duration(seconds: 4)) {
        _currentBackPressTime = now;
        await showToast(msg: AppLocalizations.of(context)!.press_again_to_exit);
        return Future.value(false);
      }
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () => _willPopCallback(context),
      child: Scaffold(
        body: PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (v) => setState(() => _selectedIndex = v),
          children: BottomNavigationList.pageList(context),
        ),
        bottomNavigationBar: ConvexAppBar(
          onTap: (v) {
            setState(() {
              _controller.animateToPage(
                v,
                duration: const Duration(milliseconds: 200),
                curve: Curves.ease,
              );
            });
          },
          backgroundColor : theme.primaryColor,
          activeColor: theme.cardColor,
          curve: Curves.easeInCirc,
          initialActiveIndex: _selectedIndex,
          items: [
            TabItem<dynamic>(
              icon: FeatherIcons.home,
              title: AppLocalizations.of(context)!.home,
            ),
            TabItem<dynamic>(
              icon: FeatherIcons.package,
              title: AppLocalizations.of(context)!.discover,
            ),
            TabItem<dynamic>(
              icon: FeatherIcons.shoppingCart,
              title: AppLocalizations.of(context)!.cart,
            ),
            TabItem<dynamic>(
              icon: FeatherIcons.search,
              title: AppLocalizations.of(context)!.search,
            ),
            TabItem<dynamic>(
              icon: FeatherIcons.user,
              title: AppLocalizations.of(context)!.profile,
            ),
          ],
        ),
      ),
    );
  }
}
