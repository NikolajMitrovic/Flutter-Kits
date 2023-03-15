part of '../home_page.dart';

class _ScrollableSection extends StatelessWidget {
  final List<ProductModel> itemCount;
  final String label;
  final VoidCallback onViewAllTap;

  const _ScrollableSection({
    Key? key,
    required this.itemCount,
    required this.label,
    required this.onViewAllTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BuildLabelSection(
          label: label,
          onViewAllTap: onViewAllTap,
        ),
       const   SizedBox(height: Const.space15),
        Container(
          width: Screens.width(context),
          height: 250,
          margin: const  EdgeInsets.only(bottom: 15),
          child: ListView.builder(
            itemCount: itemCount.length,
            scrollDirection: Axis.horizontal,
            padding: const  EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final data = itemCount[index];
              return _BuildProductCard(
                onPressed: () => Get.toNamed<dynamic>(
                  ShuppyRoutes.product,
                  arguments: data,
                ),
                product: data,
              );
            },
          ),
        ),
      ],
    );
  }
}
