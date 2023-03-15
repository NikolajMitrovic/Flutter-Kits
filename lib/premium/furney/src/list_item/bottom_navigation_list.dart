import 'package:flutter/material.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/cart/cart_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/discover/discover_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/home/home_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/profile/profile_page.dart';
import 'package:ultimate_bundle/premium/furney/src/pages/search/search_page.dart';

class BottomNavigationList {
  static List<Widget> pageList(BuildContext context) => [
        const FurneyHomeScreen(),
        const FurneyDiscoverScreen(),
        const FurneyCartScreen(),
        const FurneySearchScreen(),
        const FurneyProfileScreen(),
      ];
}
