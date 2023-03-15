part of '../address_page.dart';

class BellcommerceAddressScreen extends StatefulWidget {
  const BellcommerceAddressScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceAddressScreen> createState() =>
      _BellcommerceAddressScreenState();
}

class _BellcommerceAddressScreenState
    extends State<BellcommerceAddressScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.address,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed<dynamic>(
              BellcommerceRoutes.addressAdd,
            ),
            icon: const Icon(Icons.add),
            color: theme.primaryColor,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.saved_address,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 20),
            ListView.builder(
              itemCount: addressList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                final address = addressList[index];
                return _AddressCard(
                  address: address,
                  onPressed: () {
                    setState(() {
                      for (final e in addressList) {
                        e.isSelected = false;
                      }
                      address.isSelected = true;
                    });
                  },
                );
              },
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}
