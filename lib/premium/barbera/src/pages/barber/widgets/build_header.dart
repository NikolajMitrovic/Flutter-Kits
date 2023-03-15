part of '../barber_page.dart';


class _BuildHeader extends StatelessWidget {
  const _BuildHeader({
    Key? key,
    required this.backgroundImage,
    required this.args,
  }) : super(key: key);

  final String backgroundImage;
  final BarberModel args;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: Screens.width(context),
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 50,
            child: ClipPath(
              clipper: _BuildOvalClipper(),
              child: OctoImage(
                image: CachedNetworkImageProvider(backgroundImage),
                height: 200,
                width: Screens.width(context),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.primaryColor,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    args.photo ?? '',
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 210,
            bottom: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: theme.backgroundColor ,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(2),
              child: const CircleAvatar(backgroundColor : Colors.green),
            ),
          ),
          Positioned(
            left: 19,
            bottom: 30,
            child: Container(
              width: 65,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(.3),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(Const.space5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.open.toUpperCase(),
                    style: theme.textTheme.button,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
