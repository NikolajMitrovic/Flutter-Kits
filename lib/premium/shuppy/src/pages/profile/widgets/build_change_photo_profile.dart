part of '../profile_page.dart';

class _BuildChangePhotoProfile extends StatelessWidget {
  final VoidCallback? onChangeImageTap;

  const _BuildChangePhotoProfile({Key? key, this.onChangeImageTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 150,
      height: 150,
      alignment: Alignment.center,
      child: Stack(
        children: [
          const CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/564x/d4/a7/28/d4a72868e14074fce5f1e72f2e4f727c.jpg',
            ),
          ),
          Positioned(
            top: 0,
            right: 20,
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: onChangeImageTap,
              child: CircleAvatar(
                radius: 20,
                backgroundColor : theme.primaryColor,
                child: const Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
