import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:ultimate_bundle/flutima/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/colors.dart';
import 'package:ultimate_bundle/premium/foodiy/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/favorite_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/models/food_model.dart';
import 'package:ultimate_bundle/premium/foodiy/src/widgets/custom_elevated_button.dart';
import 'package:ultimate_bundle/providers/theme_provider.dart';

class FoodiyFoodDetailScreen extends StatefulWidget {
  const FoodiyFoodDetailScreen({Key? key}) : super(key: key);
  @override
  State<FoodiyFoodDetailScreen> createState() => _FoodiyFoodDetailScreenState();
}

class _FoodiyFoodDetailScreenState extends State<FoodiyFoodDetailScreen>
    with SingleTickerProviderStateMixin {
  ScrollController? _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  bool _isLiked = false;
  final int _sumPrice = 0;
  int _sumQuantity = 1;

  FoodModel? food;

  @override
  void initState() {
    super.initState();
    food = Get.arguments as FoodModel;
    final favorite = mockFavoriteList.singleWhere((e) => e.id == food!.id,
        orElse: () => FavoriteModel());
    _isLiked = favorite.isLiked;
    _scrollViewController = ScrollController();
    _scrollViewController!.addListener(() {
      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController!.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          buildMainSection(
            context,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 110),
                buildFoodName(theme),
                const SizedBox(height: 15),
                buildFoodDescription(context),
                const SizedBox(height: 15),
                buildFoodImagePriceAndCounter(theme),
                const SizedBox(height: 15),
                buildFoodIngredients(theme),
                const SizedBox(height: 20),
                buildFoodRatingAndEstimate(theme),
                const SizedBox(height: 100),
              ],
            ),
          ),
          if (_showAppbar) buildAppBar(context) else const SizedBox(),
          buildButtonAddToCart(),
        ],
      ),
    );
  }

  Positioned buildButtonAddToCart() {
    return Positioned(
      bottom: Const.margin,
      left: Const.margin,
      right: Const.margin,
      child: CustomElevatedButton(
        onTap: orderNowOnTap,
        label: AppLocalizations.of(context)!.order_now,
      ),
    );
  }

  Positioned buildAppBar(BuildContext context) {
    return Positioned(
      top: 10,
      left: 0,
      right: 0,
      child: AnimatedContainer(
        height: _showAppbar ? 85.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor : Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 18,
                  onPressed: Get.back,
                ),
              ),
            ),
            IconButton(
              icon: Icon(_isLiked ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).primaryColor,
              iconSize: 30,
              onPressed: () {
                favoriteOnTap(food);
              },
            ),
          ],
        ),
      ),
    );
  }

  Row buildFoodRatingAndEstimate(ThemeData theme) {
    final themeProv = Provider.of<ThemeProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SmoothStarRating(
              rating: food!.rating!,
              borderColor: theme.primaryColor,
              color: theme.primaryColor,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(
              food!.rating.toString(),
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              FeatherIcons.clock,
              size: 20,
              color: themeProv.isDarkTheme? Colors.white : Colors.black,
            ),
            const SizedBox(width: 10),
            Text(food!.estimate!, style: theme.textTheme.titleMedium)
          ],
        )
      ],
    );
  }

  SizedBox buildFoodIngredients(ThemeData theme) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        runSpacing: 10,
        children: food!.ingredients!
            .map(
              (e) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    backgroundColor : ColorLight.primary,
                    radius: 3,
                  ),
                  const SizedBox(width: 5),
                  Text(e, style: theme.textTheme.bodyMedium),
                  const SizedBox(width: 15),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  SizedBox buildFoodImagePriceAndCounter(ThemeData theme) {
    final themeProv = Provider.of<ThemeProvider>(context);
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Text(
              NumberFormat.currency(
                symbol: r'$',
                decimalDigits: 0,
                locale: Const.localeUS,
              ).format(
                  _sumPrice != 0 ? _sumPrice : food!.price! * _sumQuantity),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.left,
              style: theme.textTheme.displayLarge!
                  .copyWith(color: theme.primaryColor, fontSize: 35),
            ),
          ),
          Positioned(
            left: 0,
            child: OctoImage(
              image: CachedNetworkImageProvider(
                food!.imagePath!,
              ),
              fit: BoxFit.contain,
              height: 200,
            ),
          ),
          Positioned(
            top: 50,
            right: 0,
            child: SizedBox(
              width: 50,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      splashRadius: 15,
                      color:
                          themeProv.isDarkTheme? Colors.white : Colors.black,
                      onPressed: () {
                        setState(() {
                          _sumQuantity = max(1, _sumQuantity + 1);
                        });
                      },
                    ),
                    Text(_sumQuantity.toString(),
                        style: theme.textTheme.bodyMedium),
                    IconButton(
                      splashRadius: 15,
                      icon: const Icon(Icons.remove),
                      color:
                          themeProv.isDarkTheme? Colors.white : Colors.black,
                      onPressed: () {
                        if (_sumQuantity != 1) {
                          setState(() {
                            _sumQuantity = min(50, _sumQuantity - 1);
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ReadMoreText buildFoodDescription(BuildContext context) {
    final theme = Theme.of(context);
    return ReadMoreText(
      food!.description!,
      textAlign: TextAlign.left,
      style: theme.textTheme.titleSmall,
      colorClickableText: theme.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: AppLocalizations.of(context)!.show_more,
      trimExpandedText: AppLocalizations.of(context)!.show_less,
    );
  }

  Text buildFoodName(ThemeData theme) {
    return Text(
      food!.name!,
      style: theme.textTheme.displayLarge!.copyWith(fontSize: 25),
    );
  }

  Positioned buildMainSection(BuildContext context, {Widget? child}) {
    return Positioned.fill(
      child: SingleChildScrollView(
        controller: _scrollViewController,
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: child,
        ),
      ),
    );
  }

  void favoriteOnTap(FoodModel? food) {
    if (_isLiked == true) {
      setState(() {
        mockFavoriteList.removeWhere((e) => e.id == food!.id);
        _isLiked = false;
      });
      showToast(
        msg: AppLocalizations.of(context)!.successfully_remove_from_favorite,
      );
    } else {
      setState(() {
        mockFavoriteList.add(
          FavoriteModel(
            id: food!.id,
            food: food,
            isLiked: true,
          ),
        );
        _isLiked = true;
      });
      showToast(
        msg: AppLocalizations.of(context)!.successfully_added_to_favorite,
      );
    }
  }

  void orderNowOnTap() {
    Get.toNamed<dynamic>(FoodiyRoutes.checkout,
        arguments: FoodModel(
          id: food!.id,
          name: food!.name,
          imagePath: food!.imagePath,
          price: food!.price! * _sumQuantity,
          ingredients: food!.ingredients,
          rating: food!.rating,
          estimate: food!.estimate,
          description: food!.description,
          quantity: _sumQuantity,
        ));
  }
}
