part of '../home_page.dart';

class _BuildSwiper extends StatelessWidget {
  const _BuildSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.only(bottom: Const.space12),
      height: 200,
      child: Swiper(
        viewportFraction: 0.8,
        scale: 0.9,
        // controller: _swipperController,
        autoplay: true,
        autoplayDelay: 10000,
        itemCount: movieList.length,
        onTap: (index) {},
        itemBuilder: (BuildContext context, int index) {
          final movie = movieList[index];

          return SizedBox(
            width: MediaQuery.of(context).size.width,
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
                            spreadRadius: 2)
                      ],
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            movie.image ?? '',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(Const.margin),
                    ),
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 20,
                  child: Container(
                    height: 38,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Const.radius),
                        bottomRight: Radius.circular(Const.radius),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        movie.title ?? '',
                        style: theme.textTheme.displaySmall?.copyWith(
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
