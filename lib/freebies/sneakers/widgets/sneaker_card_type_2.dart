part of '../sneaker_page.dart';


class SneakerCard extends StatelessWidget {
  final SneakerModel sneaker;

  const SneakerCard({Key? key, required this.sneaker}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin:const EdgeInsets.only(right: 15),
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: theme.cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sneaker.brand ?? '',
                  maxLines: 1,
                  style: theme.textTheme.headlineMedium,
                ),
                const SizedBox(height: 5),
                Text(
                  sneaker.name ?? '',
                  style: theme.textTheme.displayMedium,
                  maxLines: 1,
                ),
                const SizedBox(height: 5),
                Text(
                  'SILVER BULLET',
                  maxLines: 1,
                  style: theme.textTheme.headlineMedium
                      ?.copyWith(color:const Color(0xFFCDD1D2)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Align(
              child: OctoImage(
                fit: BoxFit.fitWidth,
                image: CachedNetworkImageProvider(sneaker.image ?? ''),
              ),
            ),
          )
        ],
      ),
    );
  }
}
