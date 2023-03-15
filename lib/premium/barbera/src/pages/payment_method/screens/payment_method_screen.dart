part of '../payment_method_page.dart';

enum PaymentMethod {
  cod,
  bank,
  visa,
  payPal,
}

class BarberaPaymentMethodScreen extends StatefulWidget {
  const BarberaPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<BarberaPaymentMethodScreen> createState() => _BarberaPaymentMethodScreenState();
}

class _BarberaPaymentMethodScreenState extends State<BarberaPaymentMethodScreen> {
  PaymentMethod _selectedPayment = PaymentMethod.cod;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.payment_method,
        actions: [
          IconButton(
            onPressed: () => _addPaymentMethodBottomSheet(context),
            icon: const Icon(FeatherIcons.plus),
            color: theme.primaryColor,
          ),
        ],
      ),
      body: ListView(
        children: [
          _BuildCard(
            value: PaymentMethod.visa,
            title: AppLocalizations.of(context)!.debit_or_credit_card,
            subtitle: 'Ending in 9732',
            icon: Assets.debit,
            payment: _selectedPayment,
            onTap: () {
              setState(() {
                _selectedPayment = PaymentMethod.visa;
              });
            },
            onChanged: (PaymentMethod? v) {
              setState(() {
                _selectedPayment = v!;
              });
            },
          ),
          const SizedBox(height: Const.space15),
          _BuildCard(
            value: PaymentMethod.cod,
            payment: _selectedPayment,
            icon: Assets.cod,
            title: AppLocalizations.of(context)!.cash_on_delivery,
            subtitle: AppLocalizations.of(context)!.you_can_pay_on_the_spot,
            onTap: () {
              setState(() {
                _selectedPayment = PaymentMethod.cod;
              });
            },
            onChanged: (PaymentMethod? value) {
              setState(() {
                _selectedPayment = value!;
              });
            },
          ),
          const SizedBox(height: Const.space15),
          _BuildCard(
            value: PaymentMethod.payPal,
            payment: _selectedPayment,
            icon: Assets.paypal,
            title: AppLocalizations.of(context)!.paypal,
            subtitle: 'example@mail.com',
            onTap: () {
              setState(() {
                _selectedPayment = PaymentMethod.payPal;
              });
            },
            onChanged: (PaymentMethod? value) {
              setState(() {
                _selectedPayment = value!;
              });
            },
          ),
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: CustomElevatedButton(
              onTap: () {
                Get.back<dynamic>();
                showToast(
                  msg: AppLocalizations.of(context)!
                      .payment_method_successfully_applied,
                );
              },
              label: AppLocalizations.of(context)!.apply,
            ),
          )
        ],
      ),
    );
  }
}
