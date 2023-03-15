part of '../profile_page.dart';

class _BodySection extends StatelessWidget {
  const _BodySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: ShakeTransition(
            duration: const Duration(milliseconds: 500),
            child: Text(
              AppLocalizations.of(context)!.general,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        const SizedBox(height: Const.space8),
        ShakeTransition(
          duration: const Duration(milliseconds: 600),
          child: _IconListTile(
            title: AppLocalizations.of(context)!.setting,
            icon: FeatherIcons.settings,
            onTap: () => Get.toNamed<dynamic>(BelilaRoutes.setting),
          ),
        ),
        const SizedBox(height: Const.space12),
        ShakeTransition(
          duration: const Duration(milliseconds: 700),
          child: _IconListTile(
            title: AppLocalizations.of(context)!.my_shopping,
            icon: FeatherIcons.shoppingBag,
            onTap: () => Get.toNamed<dynamic>(BelilaRoutes.order),
          ),
        ),
        const SizedBox(height: Const.space12),
        ShakeTransition(
          duration: const Duration(milliseconds: 800),
          child: _IconListTile(
            title: AppLocalizations.of(context)!.favorite,
            icon: FeatherIcons.heart,
            onTap: () => Get.toNamed<dynamic>(BelilaRoutes.favorite),
          ),
        ),
        const SizedBox(height: Const.space12),
        ShakeTransition(
          duration: const Duration(milliseconds: 900),
          child: _IconListTile(
            title: AppLocalizations.of(context)!.my_review,
            icon: FeatherIcons.star,
            // onTap: () => Get.toNamed<dynamic>(BelilaRoutes.myReview),
            onTap: () {},
          ),
        ),
        const SizedBox(height: Const.space25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: ShakeTransition(
            duration: const Duration(milliseconds: 1000),
            child: Text(
              AppLocalizations.of(context)!.personal,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        // const SizedBox(height: Const.space12),
        // ShakeTransition(
        //   duration: const Duration(milliseconds: 1100),
        //   child: _IconListTile(
        //     title: AppLocalizations.of(context)!.about_us,
        //     icon: FeatherIcons.info,
        // onTap: () => Get.toNamed<dynamic>(BelilaRoutes.webView, arguments: Url.about),
        // onTap: (){
        //
        // },
        //   ),
        // ),
        const SizedBox(height: Const.space12),
        ShakeTransition(
          duration: const Duration(milliseconds: 1100),
          child: _IconListTile(
            title: AppLocalizations.of(context)!.help,
            icon: FeatherIcons.helpCircle,
            // onTap: () => Get.toNamed<dynamic>(BelilaRoutes.webView, arguments: Url.about),
            onTap: () {
              showToast(msg: AppLocalizations.of(context)!.help);
            },
          ),
        ),
        const SizedBox(height: Const.space12),
        ShakeTransition(
          duration: const Duration(milliseconds: 1200),
          child: Center(
            child: CustomTextButton(
              label: AppLocalizations.of(context)!.logout,
              fontSize: 16,
              textColor: Theme.of(context).errorColor,
              onTap: () {
                Get.offAllNamed<dynamic>(BelilaRoutes.signIn);
              },
            ),
          ),
        ),
      ],
    );
  }
}
