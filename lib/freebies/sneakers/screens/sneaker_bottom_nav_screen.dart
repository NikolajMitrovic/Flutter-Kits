part of '../sneaker_page.dart';

class SneakerBottomNavScreen extends StatefulWidget {
  const SneakerBottomNavScreen({Key? key}) : super(key: key);

  @override
  State<SneakerBottomNavScreen> createState() => _SneakerBottomNavScreenState();
}

class _SneakerBottomNavScreenState extends State<SneakerBottomNavScreen> {
  late PageController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const [
          SneakerHomeScreen(),
          Center(child: Text('Search')),
          Center(child: Text('Profile')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (v) {
          setState(() {
            _selectedIndex = v;
            _controller.animateToPage(
              v,
              duration:const Duration(milliseconds: 2),
              curve: Curves.ease,
            );
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: theme.primaryColor,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            label: '',
          ),
        ],
      ),
    );
  }
}
