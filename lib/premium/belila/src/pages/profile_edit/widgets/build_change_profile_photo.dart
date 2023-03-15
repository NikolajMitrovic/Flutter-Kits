part of '../profile_edit_page.dart';

class _BuildChangeProfilePhoto extends StatelessWidget {
  final String? image;
  final VoidCallback? onChangeImageTap;

  const _BuildChangeProfilePhoto({
    Key? key,
    this.image,
    this.onChangeImageTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => Get.toNamed<dynamic>(
          BelilaRoutes.photoView,
          arguments: image,
        ),
        child: Container(
          width: 150,
          height: 150,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Hero(
                tag: 'profile_photo',
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                        image ?? Const.image,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: InkWell(
                  onTap: onChangeImageTap,
                  child: CircleAvatar(
                    backgroundColor : Theme.of(context).primaryColor,
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
