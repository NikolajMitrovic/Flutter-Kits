part of '../payment_page.dart';

class TreshopPaymentScreen extends StatefulWidget {
  const TreshopPaymentScreen({Key? key}) : super(key: key);

  @override
  State<TreshopPaymentScreen> createState() => _TreshopPaymentScreenState();
}

class _TreshopPaymentScreenState extends State<TreshopPaymentScreen> {
  int? _selectedPayment = 1;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.payment_method,
      ),
      body: ListView.builder(
        itemCount: PaymentList.paymentList.length,
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final payment = PaymentList.paymentList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Const.space8,
            ),
            child: ListTile(
              onTap: () {
                setState(() {
                  _selectedPayment = index;
                });
              },
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor : theme.cardColor,
                child: Padding(
                  padding: const EdgeInsets.all(Const.space12),
                  child: SvgPicture.asset(
                    payment.icon!,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              title: AutoSizeText(
                payment.name!,
                style: theme.textTheme.displaySmall,
              ),
              trailing: Radio<int>(
                value: index,
                activeColor: theme.primaryColor,
                groupValue: _selectedPayment,
                onChanged: (int? v) {
                  setState(() {
                    _selectedPayment = v;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
