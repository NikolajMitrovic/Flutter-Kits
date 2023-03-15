part of '../browse_estate_page.dart';

class _BuildEmptyState extends StatelessWidget {
  const _BuildEmptyState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(CustomIcons.searchNotFound),
          Text(
            AppLocalizations.of(context)!.you_ve_got_nothing,
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      );
  }
}
