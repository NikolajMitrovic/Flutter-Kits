part of '../photo_view_page.dart';

class BelilaPhotoViewScreen extends StatefulWidget {
  const BelilaPhotoViewScreen({Key? key}) : super(key: key);

  @override
  State<BelilaPhotoViewScreen> createState() => _BelilaPhotoViewScreenState();
}

class _BelilaPhotoViewScreenState extends State<BelilaPhotoViewScreen> {
  String? _image;
  @override
  void initState() {
    super.initState();
    _image = Get.arguments as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context, backgroundColor : Colors.black),
      body: PhotoView(
        imageProvider: CachedNetworkImageProvider(
          _image ?? Const.image,
        ),
      ),
    );
  }
}
