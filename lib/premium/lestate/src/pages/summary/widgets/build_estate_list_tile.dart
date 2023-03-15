part of '../summary_page.dart';



class _BuildEstateListTile extends StatelessWidget {
  const _BuildEstateListTile({
    Key? key,
    required this.estate,
  }) : super(key: key);

  final EstateModel estate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Const.space8,
          vertical: Const.space5,
        ),
        leading: Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(estate.image ?? ''),
            ),
          ),
        ),
        title: Text(
          estate.name ?? '',
          style: theme.textTheme.displaySmall,
          maxLines: 1,
        ),
        subtitle: Text(
          estate.location ?? '',
          style: theme.textTheme.titleSmall,
          maxLines: 1,
        ),
      ),
    );
  }
}
