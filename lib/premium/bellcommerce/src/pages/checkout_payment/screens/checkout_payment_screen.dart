part of '../checkout_payment_page.dart';

class BellcommerceCheckoutPaymentScreen extends StatefulWidget {
  const BellcommerceCheckoutPaymentScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceCheckoutPaymentScreen> createState() =>
      _BellcommerceCheckoutPaymentScreenState();
}

class _BellcommerceCheckoutPaymentScreenState
    extends State<BellcommerceCheckoutPaymentScreen> {
  int _selectedPayment = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.payment_method,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: paymentList(context).length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                final payment = paymentList(context)[index];
                return _PaymentCard(
                  payment: payment,
                  index: index,
                  selectedIndex: _selectedPayment,
                  onPressed: () {
                    setState(() {
                      _selectedPayment = index;
                    });
                  },
                );
              },
            ),
          ),
          CustomElevatedButton(
            onTap: () {
              Get.to<dynamic>(()=>const BellcommerceCheckoutSuccessScreen());
            },
            margin: const EdgeInsets.all(Const.margin),
            label: AppLocalizations.of(context)!.continuee,
          ),
        ],
      ),
    );
  }
}
