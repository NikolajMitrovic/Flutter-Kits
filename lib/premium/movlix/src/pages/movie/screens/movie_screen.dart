part of '../movie_page.dart';

class MovlixMovieScreen extends StatefulWidget {
  const MovlixMovieScreen({Key? key}) : super(key: key);

  @override
  State<MovlixMovieScreen> createState() => _MovlixMovieScreenState();
}

class _MovlixMovieScreenState extends State<MovlixMovieScreen> {
  late MovieModel _movie;

  @override
  void initState() {
    super.initState();
    _movie = Get.arguments as MovieModel;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _BuildSliverAppBar(movie: _movie),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: Const.space25),
              CustomElevatedButton(
                onTap: () => Get.toNamed<dynamic>(MovlixRoutes.videoPlayer),
                margin: const EdgeInsets.symmetric(horizontal: Const.margin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    Text(
                      AppLocalizations.of(context)!.play,
                      style: theme.textTheme.button,
                    )
                  ],
                ),
              ),
              const SizedBox(height: Const.space25),
              const _BuildFeatures(),
              const _BuildBasicInfo(),
              const SizedBox(height: Const.space25),
            ]),
          ),
        ],
      ),
    );
  }
}
