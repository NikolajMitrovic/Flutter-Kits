part of '../gallery_page.dart';

class BarberaGalleryScreen extends StatefulWidget {
  const BarberaGalleryScreen({Key? key}) : super(key: key);

  @override
  State<BarberaGalleryScreen> createState() => _BarberaGalleryScreenState();
}

class _BarberaGalleryScreenState extends State<BarberaGalleryScreen> {
  late GalleryModel _args;
  double _currentIndex = 0;
  bool _isLiked = false;
  bool _isBookmarked = false;

  final String _image =
      'https://i.pinimg.com/564x/27/80/a2/2780a2e2c8cbe98b91f3298aad28cc84.jpg';
  final String _caption =
      'While some hair cutters call themselves stylists and the places where they work salons, others are barbers who trim hair and shave necks in barbershops. The most common customer at a barbershop is a man who wants a quick haircut and possibly a beard trim or shave as well';

  @override
  void initState() {
    super.initState();
    _args = Get.arguments as GalleryModel;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.radius),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 25,
              backgroundColor : theme.disabledColor,
              backgroundImage: CachedNetworkImageProvider(_image),
            ),
            title: Text('Debbie T Kelly', style: theme.textTheme.bodyLarge),
            subtitle: Text(
              timeago.format(DateTime.now()),
              style: theme.textTheme.titleSmall,
            ),
            trailing: IconButton(
              onPressed: () => _moreBottomSheet(context),
              icon: const Icon(
                FeatherIcons.moreVertical,
              ),
            ),
          ),
          const SizedBox(height: Const.space15),
          _BuildSwiper(
            args: _args,
            currentIndex: _currentIndex,
            onIndexChanged: (v) {
              setState(() => _currentIndex = v.toDouble());
            },
          ),
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  setState(() => _isLiked = !_isLiked);
                },
                icon: Icon(
                  (_isLiked == true) ? Icons.favorite : Icons.favorite_border,
                  color: theme.errorColor,
                ),
              ),
              const SizedBox(width: Const.space8),
              Text('120', style: theme.textTheme.titleSmall),
              const SizedBox(width: Const.space15),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: ()=> Get.toNamed<dynamic>(BarberaRoutes.comment),
                color: theme.primaryColor,
                icon: const Icon(Icons.chat),
              ),
              const SizedBox(width: Const.space8),
              Text('87', style: theme.textTheme.titleSmall),
              const Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  setState(() => _isBookmarked = !_isBookmarked);
                },
                color: theme.primaryColor,
                icon: Icon((_isBookmarked == true)
                    ? Icons.bookmark
                    : Icons.bookmark_border_outlined),
              )
            ],
          ),
          const SizedBox(height: Const.space25),
          Text(_caption, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
