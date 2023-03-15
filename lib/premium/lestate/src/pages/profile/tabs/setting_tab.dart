part of '../profile_page.dart';

class _SettingTab extends StatelessWidget {
  const _SettingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      children: [
        const SizedBox(height: Const.space25),
        _BuildListTile(
          icon: IconlyBold.setting,
          label: AppLocalizations.of(context)!.settings,
          onTap: ()=> Get.toNamed<dynamic>(LestateRoutes.setting),
        ),
        const SizedBox(height: Const.space15),
        _BuildListTile(
          icon: IconlyBold.profile,
          label: AppLocalizations.of(context)!.account,
          onTap: ()=> Get.toNamed<dynamic>(LestateRoutes.account),
        ),
        const SizedBox(height: Const.space15),
        _BuildListTile(
          icon: IconlyBold.wallet,
          label: AppLocalizations.of(context)!.payment,
          onTap: () {},
        ),
        const SizedBox(height: Const.space15),
        _BuildListTile(
          icon: IconlyBold.notification,
          label: AppLocalizations.of(context)!.notifications,
          onTap: () {},
        ),
        const SizedBox(height: Const.space15),
        _BuildListTile(
          icon: IconlyBold.lock,
          label: AppLocalizations.of(context)!.privacy_policy,
          onTap: () {},
        ),
        const SizedBox(height: Const.space15),
        _BuildListTile(
          icon: IconlyBold.infoCircle,
          label: AppLocalizations.of(context)!.about_us,
          onTap: () {},
        ),
        const SizedBox(height: Const.space15),
        _BuildListTile(
          icon: IconlyBold.logout,
          label: AppLocalizations.of(context)!.logout,
          onTap: ()=> Get.toNamed<dynamic>(LestateRoutes.signIn),
        ),
        const SizedBox(height: Const.space15),
      ],
    );
  }
}

class _BuildListTile extends StatelessWidget {
  const _BuildListTile({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.symmetric(horizontal: Const.margin),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Const.radius),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
            vertical: Const.space15,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: theme.primaryColor,
              ),
              const SizedBox(width: Const.space12),
              Text(
                label,
                style: theme.textTheme.bodyMedium,
              ),
              const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Const.accentColor,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
