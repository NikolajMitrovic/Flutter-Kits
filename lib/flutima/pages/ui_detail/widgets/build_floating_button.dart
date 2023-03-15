part of '../ui_detail_page.dart';

class _BuildFloatingButton extends StatelessWidget {
  final UIKitModels ui;

  const _BuildFloatingButton({Key? key, required this.ui}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Positioned(
      bottom: 18,
      left: 18,
      right: 18,
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
              onTap: ui.navigateDemo ??
                  () {
                    showToast(
                      msg: AppLocalizations.of(context)!
                          .sorry_demo_is_not_available_yet,
                    );
                  },
              color: const Color(0xFF41D0FD),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FeatherIcons.play,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    AppLocalizations.of(context)!.play_demo,
                    style: theme.textTheme.button,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: (ui.isPremium == true)
                ? CustomElevatedButton(
                    onTap: () async {
                      if (await canLaunchUrl(
                          Uri.parse(ui.purchaseLink ?? ''))) {
                        await launchUrl(Uri.parse(ui.purchaseLink ?? ''));
                      } else {}
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FeatherIcons.shoppingCart,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          AppLocalizations.of(context)!.buy_now,
                          style: theme.textTheme.button,
                        ),
                      ],
                    ),
                  )
                : CustomElevatedButton(
                    onTap: () async {
                      if (await canLaunchUrl(Uri.parse(ui.github ?? ''))) {
                        await launchUrl(Uri.parse(ui.github ?? ''));
                      } else {}
                    },
                    color: const Color(0xFF211F1F),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FeatherIcons.github,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        Text('GitHub', style: theme.textTheme.button),
                      ],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
