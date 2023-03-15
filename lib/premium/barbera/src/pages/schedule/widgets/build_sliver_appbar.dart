part of '../schedule_page.dart';


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
      title: Text(
        AppLocalizations.of(context)!.select_schedule,
        style: theme.textTheme.displaySmall?.copyWith(
          color: Colors.white,
        ),
      ),
      leading: IconButton(
        onPressed: Get.back,
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: OctoImage(
          image: const CachedNetworkImageProvider(
            'https://i.pinimg.com/564x/28/6c/0a/286c0a799c281e46f37903fbca180c5a.jpg',
          ),
          fit: BoxFit.fitWidth,
          colorBlendMode: BlendMode.darken,
          color: Colors.black45,
        ),
      ),
    );
  }
}
