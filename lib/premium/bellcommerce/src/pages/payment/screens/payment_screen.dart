part of '../payment_page.dart';

class BellcommercePaymentMethodScreen extends StatefulWidget {
  const BellcommercePaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<BellcommercePaymentMethodScreen> createState() =>
      _BellcommercePaymentMethodScreenState();
}

class _BellcommercePaymentMethodScreenState
    extends State<BellcommercePaymentMethodScreen> {
  int _selectedPayment = 0;
  bool _isLoading = false;
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
              setState(() {
                _isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                Get.back<dynamic>();
                showToast(
                  msg:
                      AppLocalizations.of(context)!.payment_method_has_been_set,
                );
              });
            },
            isLoading: _isLoading,
            margin: const EdgeInsets.all(Const.margin),
            label: AppLocalizations.of(context)!.save,
            labelLoading: AppLocalizations.of(context)!.saving,
          ),
        ],
      ),
    );
  }
}
