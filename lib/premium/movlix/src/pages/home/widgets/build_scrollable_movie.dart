part of '../home_page.dart';

class _BuildScrollableMovie extends StatelessWidget {
  final String label;
  final VoidCallback onSeeAllTap;
  final List<MovieModel> movieList;

  const _BuildScrollableMovie({
    Key? key,
    required this.label,
    required this.onSeeAllTap,
    required this.movieList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: theme.textTheme.displaySmall),
              InkWell(
                onTap: onSeeAllTap,
                child: Text(
                  AppLocalizations.of(context)!.see_all,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: double.infinity,
          height: 250,
          child: ListView.builder(
            itemCount: movieList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final movie = movieList[index];

              return _MovieCard(movie: movie);
            },
          ),
        ),
      ],
    );
  }
}
