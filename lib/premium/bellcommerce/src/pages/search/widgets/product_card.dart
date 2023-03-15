part of '../search_page.dart';

class _ProductCard extends StatelessWidget {
  final ProductModel? product;

  const _ProductCard({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(Const.margin),
      onTap: () => Get.toNamed<dynamic>(
        BellcommerceRoutes.product,
        arguments: product,
      ),
      child: SizedBox(
        width: 150,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: OctoImage(
                    image: CachedNetworkImageProvider(
                      product!.image!,
                    ),
                    height: 150,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  product!.title!,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '\$${product!.normalPrice}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Theme.of(context).primaryColor),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 5),
                    if (product!.isOffer!)
                      Text(
                        '\$${product!.discountPrice}',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(decoration: TextDecoration.lineThrough),
                        textAlign: TextAlign.left,
                        maxLines: 1,
                      )
                    else
                      Container(),
                  ],
                ),
                const SizedBox(height: 3),
                SmoothStarRating(
                  color: Colors.yellow[700],
                  spacing: 1,
                  size: 15,
                  rating: product!.ratingValue!,
                  borderColor: Theme.of(context).disabledColor,
                ),
                const SizedBox(height: 5),
              ],
            ),
            if (product!.isOffer!)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor.withOpacity(.8),
                  ),
                  height: 20,
                  child: Center(
                    child: Text(
                      '-50%',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              )
            else
              Container(),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Theme.of(context).disabledColor,
                  size: 23,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
