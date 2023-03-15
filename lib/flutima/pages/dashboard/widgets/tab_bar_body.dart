part of '../dashboard_page.dart';

class _TabBarBody extends StatelessWidget {
  final List<UIKitModels> itemList;
  const _TabBarBody({
    Key? key,
    required this.itemList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: itemList.length,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      itemBuilder: (context, index) {
        final data = itemList[index];
        return ListTile(
          contentPadding: const EdgeInsets.only(bottom: 15),
          onTap: (data.isPremium == true)
              ? () => Get.toNamed<dynamic>(
                    UIKitRoutes.uiDetail,
                    arguments: data,
                  )
              : () {
                  showModalBottomSheet<dynamic>(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        margin: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Expanded(
                              child: SvgPicture.asset(
                                'assets/illustrations/flutima_development.svg',
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    onTap: data.navigateDemo ??
                                        () {
                                          showToast(
                                            msg: AppLocalizations.of(context)!
                                                .sorry_demo_is_not_available_yet,
                                          );
                                        },
                                    color: const Color(0xFF41D0FD),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FeatherIcons.play,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .play_demo,
                                          style: theme.textTheme.button,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: CustomElevatedButton(
                                    onTap: () async {
                                      if (await canLaunchUrl(
                                          Uri.parse(data.github!))) {
                                        await launchUrl(
                                            Uri.parse(data.github!));
                                      } else {}
                                    },
                                    color: const Color(0xFF211F1F),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          FeatherIcons.github,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(width: 8),
                                        Text('GitHub',
                                            style: theme.textTheme.button),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
          leading: CircleAvatar(
            radius: 25,
            backgroundColor : (data.isPremium != true)
                ? const Color(0xFF211F1F)
                : theme.primaryColor,
            child: Icon(
              (data.isPremium == true)
                  ? FeatherIcons.star
                  : FeatherIcons.github,
              color: Colors.white,
            ),
          ),
          title: Text(
            data.name ?? '',
            style: theme.textTheme.displaySmall,
          ),
          subtitle: Text(
            data.features?.first.value ?? '',
            style: theme.textTheme.titleMedium,
          ),
        );
      },
    );
  }
}
