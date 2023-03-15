part of '../shipping_page.dart';

class TreshopShippingScreen extends StatefulWidget {
  const TreshopShippingScreen({Key? key}) : super(key: key);

  @override
  State<TreshopShippingScreen> createState() => _TreshopShippingScreenState();
}

class _TreshopShippingScreenState extends State<TreshopShippingScreen> {
  int? _selectedShipping = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.payment_method,
      ),
      body: ListView.builder(
        itemCount: ShippingList.shippingList.length,
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final shipping = ShippingList.shippingList[index];
          return ListTile(
            contentPadding: EdgeInsets.zero,
            onTap: () {
              setState(() {
                _selectedShipping = index;
              });
            },
            leading: Radio<int?>(
              value: index,
              activeColor: theme.primaryColor,
              groupValue: _selectedShipping,
              onChanged: (int? v) {
                setState(() {
                  _selectedShipping = v;
                });
              },
            ),
            title: AutoSizeText(
              shipping.name!,
              style: theme.textTheme.displaySmall,
            ),
            subtitle: AutoSizeText(
              // ignore: lines_longer_than_80_chars
              '${AppLocalizations.of(context)!.estimated} ${shipping.estimate!} ${AppLocalizations.of(context)!.days}',
              style: theme.textTheme.titleSmall,
            ),
            trailing: AutoSizeText(
              NumberFormat.currency(symbol: r'$').format(shipping.price),
              style: theme.textTheme.displaySmall,
            ),
          );
        },
      ),
    );
  }
}
