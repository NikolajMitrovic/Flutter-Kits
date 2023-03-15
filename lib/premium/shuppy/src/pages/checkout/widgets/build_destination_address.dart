part of '../checkout_page.dart';

class _BuildDestinationAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CustomShakeTransition(
      duration: const  Duration(milliseconds: 1300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              '2517  Fort Street, Ocracoke, North Carolina',
              style: theme.textTheme.titleMedium,
              overflow: TextOverflow.clip,
              maxLines: 2,
            ),
          ),
          const  SizedBox(width: 12),
          InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () {
              Get.toNamed<dynamic>(ShuppyRoutes.address);
            },
            child: Text(
              AppLocalizations.of(context)!.change_address,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
