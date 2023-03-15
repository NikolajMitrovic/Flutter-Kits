import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/appointment/appointment_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/home/home_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/inbox/inbox_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/nearby/nearby_page.dart';
import 'package:ultimate_bundle/premium/barbera/src/pages/profile/profile_page.dart';

class BarberaCustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;

  const BarberaCustomBottomNavigationBar({Key? key, this.selectedIndex = 0})
      : super(key: key);
  @override
  BarberaCustomBottomNavigationBarState createState() =>
      BarberaCustomBottomNavigationBarState();
}

class BarberaCustomBottomNavigationBarState extends State<BarberaCustomBottomNavigationBar> {
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
          BarneraHomeScreen(),
          BarneraNearbyScreen(),
          BarneraInboxScreen(),
          BarberaAppointmentScreen(),
          BarneraProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor : theme.cardColor,
        selectedItemColor: theme.primaryColor,
        unselectedItemColor: theme.disabledColor,
        iconSize: 20,
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
            icon: const Icon(FeatherIcons.home),
            label: AppLocalizations.of(context)!.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.compass),
            label: AppLocalizations.of(context)!.nearby,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.messageCircle),
            label: AppLocalizations.of(context)!.chat,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.calendar),
            label: AppLocalizations.of(context)!.appointment,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.user),
            label: AppLocalizations.of(context)!.profile,
          ),
        ],
      ),
    );
  }
}
