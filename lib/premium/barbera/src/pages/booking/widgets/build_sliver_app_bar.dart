part of '../booking_page.dart';


class _BuildSliverAppBar extends StatelessWidget {
  const _BuildSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      pinned: true,
      expandedHeight: 200,
      backgroundColor : theme.backgroundColor ,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: theme.primaryColor,
        onPressed: Get.back,
      ),
      title: Text(
        AppLocalizations.of(context)!.book_appointment,
        style: theme.textTheme.displaySmall?.copyWith(
          color: Colors.white,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: OctoImage(
          image: const CachedNetworkImageProvider(
            'https://i.pinimg.com/564x/c4/8e/21/c48e219689e6ca24c467a02a0a0e8e7f.jpg',
          ),
          fit: BoxFit.fitWidth,
          colorBlendMode: BlendMode.darken,
          color: Colors.black45,
        ),
      ),
    );
  }
}
