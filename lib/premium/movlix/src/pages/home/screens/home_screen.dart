part of '../home_page.dart';

class MovlixHomeScreen extends StatelessWidget {
  const MovlixHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(
              Const.margin,
              50,
              Const.margin,
              0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Movlix', style: theme.textTheme.displayLarge),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Const.radius),
                      color: theme.cardColor),
                  child: IconButton(
                    onPressed: () => Get.toNamed<dynamic>(MovlixRoutes.search),
                    icon: const Icon(FeatherIcons.search),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                const _BuildSwiper(),
                _BuildScrollableMovie(
                  label: AppLocalizations.of(context)!.trending,
                  movieList: movieList,
                  onSeeAllTap: () => Get.toNamed<dynamic>(
                    MovlixRoutes.browse,
                  ),
                ),
                _BuildScrollableMovie(
                  label: AppLocalizations.of(context)!.popular,
                  movieList: movieList,
                  onSeeAllTap: () => Get.toNamed<dynamic>(
                    MovlixRoutes.browse,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
