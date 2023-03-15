part of '../search_page.dart';


class _BodySection extends StatelessWidget {
  final List<BarbershopModel> itemCount;

  const _BodySection({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: itemCount.length,
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final barbershop = itemCount[index];
          return _BuildBarbershopCard(barbershop: barbershop);
        },
      ),
    );
  }
}
