part of '../profile_edit_page.dart';

Future<dynamic> _onModalBottomSheetTap(
  BuildContext context,
) {
  final theme = Theme.of(context);
  return showModalBottomSheet<dynamic>(
    context: context,
    backgroundColor : theme.cardColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Const.radius),
        topRight: Radius.circular(Const.radius),
      ),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
        ),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Const.radius),
            topRight: Radius.circular(Const.radius),
          ),
        ),
        width: Screens.width(context),
        height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: Const.space8),
            Center(
              child: Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                  color: theme.hintColor,
                  borderRadius: BorderRadius.circular(
                    Const.radius,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              AppLocalizations.of(context)!.change_profile_photo,
              style: theme.textTheme.displaySmall,
            ),
            const SizedBox(height: Const.space12),
            Row(
              children: [
                _BuildButtonIcon(
                  icon: Icons.photo,
                  label: AppLocalizations.of(context)!.gallery,
                  onTap: () {
                    showToast(
                      msg: AppLocalizations.of(context)!.gallery,
                    );
                  },
                ),
                const SizedBox(width: Const.space25),
                _BuildButtonIcon(
                  icon: Icons.camera_alt,
                  label: AppLocalizations.of(context)!.camera,
                  onTap: () {
                    showToast(
                      msg: AppLocalizations.of(context)!.camera,
                    );
                  },
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}

class _BuildButtonIcon extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String label;

  const _BuildButtonIcon({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor : theme.primaryColor,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: Const.space8),
          Text(
            label,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
