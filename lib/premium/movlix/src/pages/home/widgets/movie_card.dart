part of '../home_page.dart';

class _MovieCard extends StatelessWidget {
  final MovieModel movie;

  const _MovieCard({Key? key,required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return SizedBox(
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 9,
            child: GestureDetector(
              onTap: () => Get.toNamed<dynamic>(
                MovlixRoutes.movie,
                arguments: movie,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 8,
                    top: 0,
                    right: 8,
                    bottom: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 3,
                            spreadRadius: 2,
                          )
                        ],
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              movie.image ?? '',
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(Const.radius),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 0,
                    child: Container(
                      height: 38,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                            const SizedBox(width: Const.space5),
                            Text(
                              movie.rating.toString(),
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(Const.space8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movie.title ?? '',
                    style: theme.textTheme.bodyMedium,
                    maxLines: 2,
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
