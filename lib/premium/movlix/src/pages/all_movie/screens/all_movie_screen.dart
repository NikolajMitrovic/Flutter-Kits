part of '../all_movie_page.dart';

class MovlixAllMovieScreen extends StatelessWidget {
  const MovlixAllMovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.all_movies,
      ),
      body: GridView.builder(
        itemCount: movieList.length,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.0 / 3.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.only(
          left: Const.margin,
          right: Const.margin,
        ),
        itemBuilder: (BuildContext context, int index) {
          final movie = movieList[index];
          return _MovieCard(
            movie: movie,
          );
        },
      ),
    );
  }
}
