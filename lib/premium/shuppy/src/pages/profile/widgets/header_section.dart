part of '../profile_page.dart';

class _HeaderSection extends StatelessWidget {
  final String image;
  final String fullName;
  final String email;

  const _HeaderSection(
      {Key? key,
      required this.image,
      required this.fullName,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomShakeTransition(
      child: Row(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(image),
          ),
      const      SizedBox(width: Const.space25),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: theme.textTheme.displaySmall,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
               const   SizedBox(height: 5),
                Text(
                  email,
                  style: theme.textTheme.titleSmall,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
