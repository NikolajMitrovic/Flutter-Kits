part of '../barbershop_page.dart';

class _BuildSliverAppBar extends StatelessWidget {
  const _BuildSliverAppBar({
    Key? key,
    required this.isBookmarked,
    required this.barbershop,
    required this.onShareTap,
    required this.onBookmarkTap,
  }) : super(key: key);

  final bool isBookmarked;
  final BarbershopModel barbershop;
  final VoidCallback onBookmarkTap;
  final VoidCallback onShareTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      pinned: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: Get.back,
      ),
      actions: [
        IconButton(
          icon: Icon(
            isBookmarked ? Icons.bookmark : Icons.bookmark_border,
          ),
          color: Colors.white,
          onPressed: onBookmarkTap,
        ),
      ],
      expandedHeight: 200,
      backgroundColor : theme.primaryColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            OctoImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                barbershop.images?.first ?? '',
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black45,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: Screens.width(context),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      barbershop.name ?? '',
                      style: theme.textTheme.displaySmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      barbershop.address ?? '',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: Const.space15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            StarScore(
                              score: 5,
                              star: Star(
                                emptyColor: theme.disabledColor,
                                fillColor: theme.primaryColor,
                                size: 12,
                              ),
                            ),
                            const SizedBox(width: Const.space15),
                            Text(
                              '(12 ${AppLocalizations.of(context)!.reviews})',
                              style: theme.textTheme.titleSmall?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF88D498),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'OPEN',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: const Color(0xFF88D498),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
