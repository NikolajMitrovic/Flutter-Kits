part of '../profile_edit_page.dart';


class _BuildProfilePhoto extends StatelessWidget {
  const _BuildProfilePhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Align(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor : theme.primaryColor,
            backgroundImage: const CachedNetworkImageProvider(
              'https://i.pinimg.com/564x/f3/fd/da/f3fddac6fb31791d076a64824b024429.jpg',
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                showToast(
                  msg: AppLocalizations.of(context)!.open_camera_tapped,
                );
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor : theme.backgroundColor ,
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor : theme.primaryColor,
                  child: const Padding(
                    padding: EdgeInsets.all(Const.space8),
                    child: Icon(
                      FeatherIcons.camera,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
