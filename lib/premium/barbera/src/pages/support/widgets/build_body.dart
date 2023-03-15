part of '../support_page.dart';

class _BuildBody extends StatelessWidget {
  const _BuildBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space25,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: Const.space15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            border: Border.all(color: theme.primaryColor),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(Const.space12),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(Const.radius),
                    topLeft: Radius.circular(Const.radius),
                  ),
                ),
                width: Screens.width(context),
                child: Text(
                  'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Const.space12),
                child: Text(
                  'est rerum tempore vitae sequi sint nihil reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla',
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
