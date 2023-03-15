import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/bookmark/bookmark_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/home/home_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/inbox/inbox_page.dart';
import 'package:ultimate_bundle/premium/lestate/src/pages/profile/profile_page.dart';

class LestateCustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;

  const LestateCustomBottomNavigationBar({Key? key, this.selectedIndex = 0})
      : super(key: key);
  @override
  LestateCustomBottomNavigationBarState createState() =>
      LestateCustomBottomNavigationBarState();
}

class LestateCustomBottomNavigationBarState
    extends State<LestateCustomBottomNavigationBar> {
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
          LestateHomeScreen(),
          LestateBookmarkScreen(),
          LestateInboxScreen(),
          LestateProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor : theme.cardColor,
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: theme.disabledColor,
        iconSize: 20,
        selectedFontSize: 0,
        selectedLabelStyle: theme.textTheme.bodyMedium?.copyWith(
          fontSize: 10,
        ),
        unselectedLabelStyle: theme.textTheme.titleMedium?.copyWith(
          fontSize: 10,
        ),
        type: BottomNavigationBarType.fixed,
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
          BottomNavigationBarItem(
            icon: const Icon(IconlyBold.home),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(IconlyBold.bookmark),
            label: AppLocalizations.of(context)!.bookmarked,
          ),
          BottomNavigationBarItem(
            icon: const Icon(IconlyBold.message),
            label: AppLocalizations.of(context)!.chat,
          ),
          BottomNavigationBarItem(
            icon: const Icon(IconlyBold.profile),
            label: AppLocalizations.of(context)!.profile,
          ),
        ],
      ),
    );
  }
}
