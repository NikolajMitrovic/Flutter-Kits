part of '../offer_page.dart';

class _OfferCard extends StatelessWidget {
  const _OfferCard({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Const.space15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.offer),
          const SizedBox(width: Const.space15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offer.title??'',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: Const.space8),
                ReadMoreText(
                  offer.description ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.left,
                  trimLines: 3,
                  colorClickableText: Theme.of(context).primaryColor,
                  trimMode: TrimMode.Line,
                ),
                const SizedBox(height: Const.space12),
                Text(
                  DateFormat.yMMMEd().format(
                    offer.dateTime!,
                  ),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: Const.space12),
              ],
            ),
          )
        ],
      ),
    );
  }
}
