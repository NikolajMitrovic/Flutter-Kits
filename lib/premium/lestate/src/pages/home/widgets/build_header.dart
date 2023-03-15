part of '../home_page.dart';



class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.hello,
                      style: theme.textTheme.displayLarge,
                    ),
                    TextSpan(
                      text: '\nJessica Veranda 👋',
                      style: theme.textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: Const.space15),
              Text(
                'Let’s find the best Real Estate with us! ',
                style: theme.textTheme.titleMedium,
              )
            ],
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Const.radius),
                    color: theme.disabledColor.withOpacity(.2),
                  ),
                  child: Icon(
                    IconlyBold.notification,
                    color: theme.primaryColor,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor : const Color(0xFFFFC27B),
                    child: Text(
                      '1',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
