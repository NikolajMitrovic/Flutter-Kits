import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/home/home_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/order/order_page.dart';
import 'package:ultimate_bundle/premium/coffiy/src/pages/reward/reward_page.dart';

class CoffiyCustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;

  const CoffiyCustomBottomNavigationBar({Key? key, this.selectedIndex = 0})
      : super(key: key);
  @override
  CoffiyCustomBottomNavigationBarState createState() =>
      CoffiyCustomBottomNavigationBarState();
}

class CoffiyCustomBottomNavigationBarState
    extends State<CoffiyCustomBottomNavigationBar> {
  late PageController _controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.selectedIndex);
    setState(() {
      _selectedIndex = widget.selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (v) {
          setState(() {
            _selectedIndex = v;
          });
        },
        children: const [
          CoffiyHomeScreen(),
          CoffiyRewardScreen(),
          CoffiyOrderScreen(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor : theme.cardColor,
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: theme.disabledColor,
        onTap: (v) {
          setState(() {
            _selectedIndex = v;
            _controller.animateToPage(
              v,
              duration: const Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          });
        },
        items: [
          DotNavigationBarItem(
            icon: const Icon(IconlyBold.home),
          ),
          DotNavigationBarItem(
            icon: const Icon(IconlyBold.discount),
          ),
          DotNavigationBarItem(
            icon: const Icon(IconlyBold.document),
          ),
        ],
      ),
    );
  }
}
