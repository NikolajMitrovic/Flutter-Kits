part of '../bottom_navigation_page.dart';

class ShuppyBottomNavigationScreen extends StatefulWidget {
  final int initialIndex;

  const ShuppyBottomNavigationScreen({Key? key, this.initialIndex = 0})
      : super(key: key);
  @override
  State<ShuppyBottomNavigationScreen> createState() => _ShuppyBottomNavigationScreenState();
}

class _ShuppyBottomNavigationScreenState extends State<ShuppyBottomNavigationScreen> {
  int _selectedIndex = 0;
  PageController? _controller;
  DateTime? currentBackPressTime;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.initialIndex);
    refreshTabController();
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
          onPageChanged: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          children: LocalList.bottomNavigationPageList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: LocalList.bottomNavigationList(context),
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _controller!.animateToPage(
                value,
                duration: const  Duration(milliseconds: 200),
                curve: Curves.ease,
              );
            });
          },
          selectedItemColor: theme.primaryColor,
          unselectedItemColor: theme.disabledColor,
          selectedLabelStyle: theme.textTheme.titleMedium,
          unselectedLabelStyle: theme.textTheme.titleMedium,
          backgroundColor : theme.cardColor,
        ),
      ),
    );
  }

  void refreshTabController() {
    setState(() => _selectedIndex = widget.initialIndex);
  }

  Future<bool> _willPopCallback(BuildContext context) async {
    final now = DateTime.now();
    if (_selectedIndex != 1) {
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 4)) {
        currentBackPressTime = now;
        await showToast(msg: AppLocalizations.of(context)!.press_again_to_exit);
        return Future.value(false);
      }
    }
    return Future.value(true);
  }
}
