import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/all_movie/all_movie_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/genre/genre_page.dart';
import 'package:ultimate_bundle/premium/movlix/src/pages/home/home_page.dart';

class MovlixCustomBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;

  const MovlixCustomBottomNavigationBar({Key? key, this.selectedIndex = 0})
      : super(key: key);
  @override
  MovlixCustomBottomNavigationBarState createState() =>
      MovlixCustomBottomNavigationBarState();
}

class MovlixCustomBottomNavigationBarState
    extends State<MovlixCustomBottomNavigationBar> {
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
          MovlixHomeScreen(),
          MovlixGenreScreen(),
          MovlixAllMovieScreen(),
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
            icon: const Icon(FeatherIcons.list),
            label: AppLocalizations.of(context)!.genre,
          ),
          BottomNavigationBarItem(
            icon: const Icon(FeatherIcons.grid),
            label: AppLocalizations.of(context)!.all_movies,
          ),
        ],
      ),
    );
  }
}
