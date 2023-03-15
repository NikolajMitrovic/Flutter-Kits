part of '../ui_detail_page.dart';

class _BuildSwiper extends StatelessWidget {
  final UIKitModels ui;

  const _BuildSwiper({Key? key, required this.ui}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: OctoImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(ui.heroImage ?? ''),
        ),
      ),
    );
  }
}
