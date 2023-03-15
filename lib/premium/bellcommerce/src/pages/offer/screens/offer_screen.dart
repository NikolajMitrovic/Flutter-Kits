part of '../offer_page.dart';

class BellcommerceOfferScreen extends StatelessWidget {
  const BellcommerceOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.offers,
      ),
      body: ListView.builder(
        itemCount: offerList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space15,
        ),
        itemBuilder: (context, index) {
          final offer = offerList[index];
          return _OfferCard(offer: offer);
        },
      ),
    );
  }
}
