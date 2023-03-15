part of '../profile_page.dart';

class _BuildChangePhotoProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 150,
      height: 150,
      alignment: Alignment.center,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 75,
              backgroundColor : theme.cardColor,
              backgroundImage:const CachedNetworkImageProvider(
                  'https://i.pinimg.com/564x/7a/28/1c/7a281c79608aa90d65efd5fb1166137d.jpg'),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: 25,
                backgroundColor : theme.backgroundColor ,
                child: CircleAvatar(
                  backgroundColor : theme.primaryColor,
                  child:const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
