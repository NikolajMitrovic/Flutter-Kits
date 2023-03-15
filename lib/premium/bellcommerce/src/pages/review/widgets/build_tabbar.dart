part of '../review_page.dart';


class _BuildTabBar extends StatelessWidget {
  const _BuildTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: ButtonsTabBar(
        backgroundColor : theme.primaryColor,
        unselectedBackgroundColor : theme.cardColor,
        unselectedLabelStyle: theme.textTheme.titleMedium,
        labelStyle: theme.textTheme.button,
        unselectedBorderColor: theme.disabledColor,
        borderColor: theme.primaryColor,
        borderWidth: 2,
        buttonMargin: const EdgeInsets.only(left: Const.space12),
        tabs: [
          Tab(
            text: AppLocalizations.of(context)!.all_review,
          ),
          Tab(
            icon: Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            text: '1',
          ),
          Tab(
            icon: Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            text: '2',
          ),
          Tab(
            icon: Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            text: '3',
          ),
          Tab(
            icon: Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            text: '4',
          ),
          Tab(
            icon: Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            text: '5',
          ),
        ],
      ),
    );
  }
}
