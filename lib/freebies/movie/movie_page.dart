import 'package:cached_network_image/cached_network_image.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

part 'helpers/movie_model.dart';
part 'helpers/movie_theme.dart';
part 'screens/movie_screen.dart';
part 'widgets/horizontal_movie_card.dart';
part 'widgets/vertical_movie_card.dart';

class FreebiesMovieScreen extends StatelessWidget {
  const FreebiesMovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme:_themeDark(context),
      home: const _MovieHomeScreen(),
    );
  }
}
