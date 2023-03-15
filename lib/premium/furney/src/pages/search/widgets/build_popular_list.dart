part of '../search_page.dart';


class _BuildPopularList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      children: SearchList.popularList(context)
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(
                right: Const.space12,
                bottom: Const.space15,
              ),
              child: InkWell(
                onTap: () {
                },
                borderRadius: BorderRadius.circular(Const.radius),
                child: Container(
                  height: 50,
                  padding:const EdgeInsets.all(Const.space12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Const.radius),
                    border: Border.all(color: theme.hintColor),
                  ),
                  child: Text(
                    e,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
