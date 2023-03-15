import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:ultimate_bundle/premium/shuppy/src/helpers/colors.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class CustomStarRating extends StatelessWidget {
  final double rating;
  final RatingChangeCallback? onChanged;

  const CustomStarRating({Key? key,required this.rating,this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, state, snapshot) {
      return SmoothStarRating(
        color: (state.isDarkTheme == true)
            ? ColorDark.warning
            : ColorLight.warning,
        size: 15,
        rating: rating,
        borderColor: ColorLight.warning,
        onRatingChanged: onChanged,
      );
    });
  }
}
