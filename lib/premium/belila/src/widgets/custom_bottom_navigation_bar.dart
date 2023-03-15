import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/toast.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/home/home_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/inbox/inbox_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/notifications/notification_page.dart';
import 'package:ultimate_bundle/premium/belila/src/pages/profile/profile_page.dart';

class BelilaCustomBottomNavigationBar extends StatefulWidget {
  final int initialIndex;

  const BelilaCustomBottomNavigationBar({Key? key, this.initialIndex = 0})
      : super(key: key);

  @override
  State<BelilaCustomBottomNavigationBar> createState() =>
      _BelilaCustomBottomNavigationBarState();
}

class _BelilaCustomBottomNavigationBarState extends State<BelilaCustomBottomNavigationBar> {
  int _selectedIndex = 0;
  PageController? _controller;
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
    if (_selectedIndex == 0) {
      if (_currentBackPressTime == null ||
          now.difference(_currentBackPressTime!) > const Duration(seconds: 4)) {
        _currentBackPressTime = now;
        await showToast(
          msg: AppLocalizations.of(context)!.press_again_to_exit,
        );
        return Future.value(false);
      }
    } else {
      setState(() {
        _controller!.animateToPage(
          0,
          duration: const Duration(milliseconds: 200),
          curve: Curves.ease,
        );
      });
      return Future.value(false);
    }
    return Future.value(true);
  }

  final List<Widget> _pageList = const [
    BelilaHomeScreen(),
    BelilaInboxScreen(),
    BelilaNotificationScreen(),
    BelilaProfileScreen(),
  ];

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
          children: _pageList,
        ),
        bottomNavigationBar: SnakeNavigationBar.color(
          currentIndex: _selectedIndex,
          backgroundColor : theme.cardColor,
          onTap: (v) {
            setState(() {
              _controller!.animateToPage(
                v,
                duration: const Duration(milliseconds: 200),
                curve: Curves.ease,
              );
            });
          },
          selectedItemColor: theme.primaryColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: theme.textTheme.titleSmall,
          unselectedLabelStyle: theme.textTheme.titleSmall,
          unselectedItemColor: theme.hintColor,
          snakeShape: SnakeShape.indicator,
          snakeViewColor: theme.primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: const _BuildIconBadge(
                icon: FeatherIcons.home,
                badge: 0,
              ),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              icon: const _BuildIconBadge(
                icon: FeatherIcons.messageCircle,
                badge: 0,
              ),
              label: AppLocalizations.of(context)!.inbox,
            ),
            BottomNavigationBarItem(
              icon: const _BuildIconBadge(
                icon: FeatherIcons.bell,
                badge: 0,
              ),
              label: AppLocalizations.of(context)!.notification,
            ),
            BottomNavigationBarItem(
              icon: const _BuildIconBadge(
                icon: FeatherIcons.user,
                badge: 0,
              ),
              label: AppLocalizations.of(context)!.profile,
            )
          ],
        ),
      ),
    );
  }
}

class _BuildIconBadge extends StatelessWidget {
  const _BuildIconBadge({
    Key? key,
    required this.icon,
    this.badge,
  }) : super(key: key);

  final IconData icon;
  final int? badge;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Icon(
                icon,
                size: 25,
              ),
            ),
          ),
          if (badge == 0)
            const Positioned(
              top: 0,
              right: 0,
              child: SizedBox(),
            )
          else
            Positioned(
              top: 0,
              right: 0,
              child: CircleAvatar(
                radius: 10,
                backgroundColor : theme.primaryColor,
                child: Text(
                  badge.toString(),
                  style:
                      theme.textTheme.titleSmall?.copyWith(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
