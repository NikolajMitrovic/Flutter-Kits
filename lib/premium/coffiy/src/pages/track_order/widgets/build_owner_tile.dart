part of '../track_order_page.dart';

class _BuildOwnerTile extends StatelessWidget {
  const _BuildOwnerTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned(
      bottom: 200,
      left: 0,
      right: 0,
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(Const.margin),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Const.radius),
            topRight: Radius.circular(Const.radius),
          ),
          color: theme.primaryColor,
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: CachedNetworkImageProvider(
                  'https://i.pinimg.com/564x/90/d7/52/90d7520a35d7212e0d0e9540208a5c86.jpg'),
            ),
            const SizedBox(width: Const.space12),
            Text(
              'Thomas J Jefferson',
              style: theme.textTheme.displaySmall?.copyWith(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundColor : theme.disabledColor.withOpacity(.3),
              child: IconButton(
                onPressed: () async {
                  await _launchPhoneCall('tel:+12949992348');
                },
                icon: const Icon(IconlyLight.call),
                color: Colors.white,
              ),
            ),
            const SizedBox(width: Const.space12),
            CircleAvatar(
              radius: 20,
              backgroundColor : theme.disabledColor.withOpacity(.3),
              child: IconButton(
                onPressed: () => Get.toNamed<dynamic>(CoffiyRoutes.chat),
                icon: const Icon(IconlyLight.chat),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchPhoneCall(String number) async {
    final Uri phoneCall = Uri(scheme: 'tel',path: number);
    await launchUrl(phoneCall);
  }
}
