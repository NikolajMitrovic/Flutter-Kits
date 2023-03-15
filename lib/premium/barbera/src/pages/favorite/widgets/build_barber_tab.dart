part of '../favorite_page.dart';

class _BuildBarberTab extends StatelessWidget {
  const _BuildBarberTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: topBarberList.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 2.2 / 3.2,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: Const.margin,
      ),
      itemBuilder: (context, index) {
        final barber = topBarberList[index];
        return _BuildBarberCard(barber: barber);
      },
    );
  }
}
