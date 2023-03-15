part of '../checkout_page.dart';

class _BuildDestinationAddressCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.cardColor,
      ),
      padding: const EdgeInsets.all(Const.margin),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Violet Evergarden',
            style: theme.textTheme.displaySmall,
            maxLines: 1,
          ),
         const SizedBox(height: Const.space8),
          AutoSizeText(
            '3012 Broaddus Avenue Saint Joseph, California 4908',
            style: theme.textTheme.titleMedium?.copyWith(
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
