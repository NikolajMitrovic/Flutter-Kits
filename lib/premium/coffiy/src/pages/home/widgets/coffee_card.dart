part of '../home_page.dart';

class _CoffeeCard extends StatelessWidget {
  const _CoffeeCard({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final CoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => Get.toNamed<dynamic>(
        CoffiyRoutes.coffee,
        arguments: coffee,
      ),
      child: Hero(
        tag: 'tag ${coffee.image}',
        child: Container(
          width: 170,
          margin: const EdgeInsets.only(right: Const.space15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Const.radius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                coffee.image ?? '',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                height: 50,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Const.radius),
                      bottomRight: Radius.circular(Const.radius),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    coffee.name ?? '',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
