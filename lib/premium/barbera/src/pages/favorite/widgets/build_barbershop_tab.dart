part of '../favorite_page.dart';

class _BuildBarbershopTab extends StatelessWidget {
  const _BuildBarbershopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: nearestBarbershopList.length,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        // vertical: 20,
        horizontal: Const.margin,
      ),
      itemBuilder: (context, index) {
        final barbershop = nearestBarbershopList[index];
        return _BuildBarbershopCard(barbershop: barbershop);
      },
    );
  }
}
