part of '../home_page.dart';

class _BuildNewBuildingList extends StatelessWidget {
  const _BuildNewBuildingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BuildLabel(label: AppLocalizations.of(context)!.new_buildings),
        const SizedBox(height: Const.space12),
        ListView.builder(
          itemCount: specialEstateList.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          itemBuilder: (context, index) {
            final estate = specialEstateList[index];
            return _EstateCardVertical(estate: estate);
          },
        ),
      ],
    );
  }
}
