part of '../home_page.dart';

class _CategoryCircleCard extends StatelessWidget {
  final CategoryModel category;

  const _CategoryCircleCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Get.toNamed<dynamic>(BellcommerceRoutes.browseProduct),
      child: SizedBox(
        width: 80,
        child: Column(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                ),
                image: DecorationImage(
                  image: AssetImage(category.icon!),
                ),
              ),
            ),
            const SizedBox(height: Const.space12),
            Text(
              category.name??'',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
