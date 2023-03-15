part of '../photo_view_list_page.dart';

class BelilaPhotoViewListScreen extends StatefulWidget {
  const BelilaPhotoViewListScreen({Key? key}) : super(key: key);
  @override
  State<BelilaPhotoViewListScreen> createState() => _BelilaPhotoViewListScreenState();
}

class _BelilaPhotoViewListScreenState extends State<BelilaPhotoViewListScreen> {
  int _currentIndex = 0;
  late List<String> _images;

  @override
  void initState() {
    super.initState();
    _images = Get.arguments as List<String>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.black,
      appBar: CustomAppBar(
        context,
        backgroundColor : Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                // ignore: avoid_dynamic_calls
                final data = _images[index];
                return PhotoViewGalleryPageOptions(
                  imageProvider: CachedNetworkImageProvider(data),
                  initialScale: PhotoViewComputedScale.contained * 0.8,
                );
              },
              // ignore: avoid_dynamic_calls
              itemCount: _images.length,
              loadingBuilder: (context, event) => Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    value: event == null
                        ? 0
                        : event.cumulativeBytesLoaded /
                            event.expectedTotalBytes!,
                  ),
                ),
              ),
              // backgroundDecoration: widget.backgroundDecoration,
              // pageController: widget.pageController,
              onPageChanged: (val) {
                setState(() => _currentIndex = val);
              },
            ),
          ),
          Center(
            child: CustomDotsIndicator(
              dotsCount: _images.length,
              position: _currentIndex,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
