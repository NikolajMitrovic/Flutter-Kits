import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/helpers/constants.dart';
import 'package:ultimate_bundle/premium/bellcommerce/src/widgets/custom_app_bar.dart';

class CustomPhotoListView extends StatefulWidget {
  const CustomPhotoListView({Key? key}) : super(key: key);

  @override
  State<CustomPhotoListView> createState() => _CustomPhotoListViewState();
}

class _CustomPhotoListViewState extends State<CustomPhotoListView> {
  late PageController _controller;
  late List<String> _image;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _image = Get.arguments as List<String>;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor : Colors.black,
      appBar: CustomAppBar(
        context,
        backgroundColor : Colors.black,
      ),
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            itemCount: _image.length,
            scrollPhysics: const BouncingScrollPhysics(),
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
                ),
              ),
            ),
            backgroundDecoration: const BoxDecoration(
              color: Colors.black,
            ),
            pageController: _controller,
            onPageChanged: (v) {
              setState(() {
                _currentIndex = v;
              });
            },
            builder: (BuildContext context, int index) {
              final data = _image[index];
              return PhotoViewGalleryPageOptions(
                imageProvider: CachedNetworkImageProvider(data),
                initialScale: PhotoViewComputedScale.contained * 0.8,
                heroAttributes: PhotoViewHeroAttributes(tag: data),
              );
            },
          ),
          Positioned(
            bottom: Const.margin,
            left: 0,
            right: 0,
            child: DotsIndicator(
              dotsCount: _image.length,
              position: _currentIndex.toDouble(),
              decorator: DotsDecorator(
                activeColor: theme.primaryColor,
                color: theme.disabledColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
