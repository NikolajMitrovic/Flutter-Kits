part of '../movie_page.dart';


class _HorizontalMovieCard extends StatelessWidget {
  final MovieModel? movie;

  const _HorizontalMovieCard({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 150,
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: InkWell(
        onTap: () {
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: OctoImage(
                width: 150,
                height: 250,
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  movie?.image ?? '',
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              movie?.name ?? '',
              style: theme.textTheme.displaySmall,
              maxLines: 1,
            ),
            const SizedBox(height: 5),
            const SmoothStarRating(
              rating: 5,
              color: Color(0xFFFFA235),
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
