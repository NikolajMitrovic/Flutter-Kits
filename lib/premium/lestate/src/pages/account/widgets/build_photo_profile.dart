part of '../account_page.dart';


class _BuildPhotoProfile extends StatelessWidget {
  const _BuildPhotoProfile({
    Key? key,
  }) : super(key: key);

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
            radius: 60,
            backgroundColor : Colors.green,
            backgroundImage: CachedNetworkImageProvider(
              'https://i.pinimg.com/564x/a6/f8/e1/a6f8e1557161cea990a5367dea66550c.jpg',
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 20,
              backgroundColor : theme.primaryColor,
              child: const Icon(
                IconlyBold.camera,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
