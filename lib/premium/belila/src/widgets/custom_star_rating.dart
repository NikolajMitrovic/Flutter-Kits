import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:ultimate_bundle/premium/belila/src/helpers/colors.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class CustomStarRating extends StatelessWidget {
  final double rating;
  final bool allowHalfRating;
  final RatingChangeCallback? onRatingChanged;

  const CustomStarRating({
    Key? key,
    this.rating = 0,
    this.allowHalfRating = false,
    this.onRatingChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeProvider>(context);
    return SmoothStarRating(
      rating: rating,
      size: 18,
      onRatingChanged: onRatingChanged,
      allowHalfRating: allowHalfRating,
      color: themeProv.isDarkTheme ? ColorDark.warning : ColorLight.warning,
      borderColor:
          themeProv.isDarkTheme ? ColorDark.warning : ColorLight.warning,
    );
  }
}
