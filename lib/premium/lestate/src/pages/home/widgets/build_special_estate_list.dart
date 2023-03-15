part of '../home_page.dart';

class _BuildSpecialEstateList extends StatelessWidget {
  const _BuildSpecialEstateList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BuildLabel(
          label: AppLocalizations.of(context)!.special_for_you,
          onSeeAllTap: () => Get.toNamed<dynamic>(
            LestateRoutes.browseEstate,
            arguments: '',
          ),
        ),
        const SizedBox(height: Const.space12),
        SizedBox(
          width: double.infinity,
          height: 275,
          child: ListView.builder(
            itemCount: specialEstateList.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final estate = specialEstateList[index];
              return _EstateCardHorizontal(estate: estate);
            },
          ),
        )
      ],
    );
  }
}
