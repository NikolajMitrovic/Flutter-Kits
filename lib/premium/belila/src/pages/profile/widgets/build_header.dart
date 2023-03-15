part of '../profile_page.dart';

class _BuildHeader extends StatelessWidget {
  final String? image;
  final String? firstName;
  final String? lastName;
  final String? emailAddress;
  final bool isVerified;

  const _BuildHeader({
    Key? key,
    this.image,
    this.firstName,
    this.lastName,
    this.emailAddress,
    this.isVerified = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: ShakeTransition(
        duration: const Duration(milliseconds: 400),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed<dynamic>(BelilaRoutes.photoView, arguments: image);
              },
              child: Hero(
                tag: 'profile_photo',
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor : Theme.of(context).primaryColor,
                  backgroundImage: CachedNetworkImageProvider(
                    image ?? Const.image,
                  ),
                ),
              ),
            ),
            const SizedBox(width: Const.space25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$firstName $lastName',
                    style: theme.textTheme.displayLarge!.copyWith(height: 1.2),
                    maxLines: 1,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                    emailAddress ?? '',
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                  ),
                  if (isVerified == true)
                    const SizedBox()
                  else
                    Padding(
                      padding: const EdgeInsets.only(top: Const.space12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            FeatherIcons.alertCircle,
                            color: theme.errorColor,
                          ),
                          const SizedBox(width: Const.space12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppLocalizations.of(context)!
                                    .email_not_verified,
                                style: theme.textTheme.titleSmall,
                              ),
                              const SizedBox(height: Const.space5),
                              InkWell(
                                // onTap: () => Get.toNamed(Routes.resendEmail),
                                onTap: () {
                                  showToast(msg: AppLocalizations.of(context)!.verify_now);
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.verify_now,
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    color: theme.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
