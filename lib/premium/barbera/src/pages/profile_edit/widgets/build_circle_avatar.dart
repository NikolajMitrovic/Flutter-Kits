part of '../profile_edit_page.dart';

class _BuildCircleAvatar extends StatelessWidget {
  const _BuildCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: InkWell(
        onTap: () => _uploadBottomSheet(context),
        borderRadius: BorderRadius.circular(120),
        child: CircleAvatar(
          radius: 60,
          backgroundColor : theme.disabledColor,
          backgroundImage: const CachedNetworkImageProvider(
            Assets.profilePhoto,
          ),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: theme.primaryColor.withOpacity(.7),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              FeatherIcons.camera,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
