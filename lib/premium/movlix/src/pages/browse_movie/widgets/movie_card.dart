part of '../browse_movie_page.dart';

class _MovieCard extends StatelessWidget {
  final MovieModel movie;

  const _MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: OctoImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(movie.image ?? ''),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(Const.space5),
                  child: Text(
                    movie.title ?? '',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => Get.toNamed<dynamic>(
                MovlixRoutes.movie,
                arguments: movie,
              ),
            ),
          ),
        )
      ],
    );
  }
}
