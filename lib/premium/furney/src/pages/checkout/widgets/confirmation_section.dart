part of '../checkout_page.dart';

class _ConfirmationSection extends StatefulWidget {
  const _ConfirmationSection({
    Key? key,
  }) : super(key: key);

  @override
  State<_ConfirmationSection> createState() => __ConfirmationSectionState();
}

class __ConfirmationSectionState extends State<_ConfirmationSection> {
  TextEditingController? _promoCodeController;
  @override
  void initState(){
    super.initState();
    _promoCodeController = TextEditingController();
  }
  
  @override
  void dispose(){
    _promoCodeController = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              _BuildDestinationAddressCard(),
            const  SizedBox(height: Const.space15),
              _BuildPaymentCard(),
            const  SizedBox(height: Const.space15),
              _BuildPromoCodeCard(controller: _promoCodeController),
            const  SizedBox(height: Const.space25),
            ],
          ),
        ),
        _FooterSection(),
      ],
    );
  }
}
