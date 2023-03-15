part of '../movie_page.dart';

class _VerticalMovieCard extends StatelessWidget {
  final MovieModel? movie;

  const _VerticalMovieCard({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: OctoImage(
              width: 75,
              height: 75,
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                movie?.image ?? '',
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: SizedBox(
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    movie?.genres?.first ?? '',
                    style: theme.textTheme.titleSmall,
                  ),
                  Text(
                    movie?.name ?? '',
                    maxLines: 1,
                    style: theme.textTheme.displaySmall,
                  ),
                  SmoothStarRating(
                    rating: movie?.rating ?? 0,
                    color: const Color(0xFFFFA235),
                    size: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
