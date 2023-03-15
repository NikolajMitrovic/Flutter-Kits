part of '../coffee_page.dart';

class _BuildImage extends StatelessWidget {
  const _BuildImage({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  final CoffeeModel coffee;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Const.radius),
        child: Hero(
          tag: 'tag ${coffee.image}',
          child: OctoImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(coffee.image ?? ''),
          ),
        ),
      ),
    );
  }
}
