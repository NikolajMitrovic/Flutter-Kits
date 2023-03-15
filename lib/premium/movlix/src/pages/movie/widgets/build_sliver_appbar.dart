part of '../movie_page.dart';

class _BuildSliverAppBar extends StatelessWidget {
  final MovieModel movie;

  const _BuildSliverAppBar({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return SliverAppBar(
      backgroundColor : Colors.black54,
      expandedHeight: height * 0.50,
      pinned: true,
      actions: <Widget>[
        // IconButton(
        //   icon: Icon(Icons.share),
        //   onPressed: () {
        //     Share.share(Shares.all(context, title: args.judul));
        //   },
        // ),
        IconButton(
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
          onPressed: () => Get.toNamed<dynamic>(MovlixRoutes.search),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: CachedNetworkImageProvider(
                      movie.image ?? '',
                    ),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: Const.space12,
              left: Const.margin,
              right: Const.margin,
              top: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Const.radius),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(movie.image ?? ''),
                      ),
                    ),
                  ),
                  const SizedBox(width: Const.space12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title ?? '',
                          style: theme.textTheme.displayLarge?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: Const.space25),
                        Text(
                          '2020 • Horror, Thriller',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: Const.space8),
                        Text(
                          '1h42min • Movie HD',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: Const.space25),
                        Row(
                          children: [
                            SvgPicture.asset(
                              CustomIcons.imdb,
                              width: 30,
                            ),
                            const SizedBox(width: Const.margin),
                            Text(
                              '4.5/10',
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
