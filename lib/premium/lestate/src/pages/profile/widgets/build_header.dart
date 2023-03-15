part of '../profile_page.dart';


class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Stack(
        children: [
          SvgPicture.asset(
            Images.onBoarding,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: Const.space25 * 2,
            left: Const.margin,
            right: Const.margin,
            child: Align(
              child: CircleAvatar(
                radius: 50,
                backgroundColor : theme.disabledColor,
                backgroundImage: const CachedNetworkImageProvider(
                  'https://i.pinimg.com/564x/a6/f8/e1/a6f8e1557161cea990a5367dea66550c.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: Const.space25 * 2,
            left: Const.margin,
            right: Const.margin,
            child: Text(
              'Jessica Veranda',
              textAlign: TextAlign.center,
              style: theme.textTheme.displayLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                    color: theme.backgroundColor ,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Const.radius),
                      topRight: Radius.circular(Const.radius),
                    )),
              )),
        ],
      ),
    );
  }
}
