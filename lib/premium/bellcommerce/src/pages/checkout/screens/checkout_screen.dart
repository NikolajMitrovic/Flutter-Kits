part of '../checkout_page.dart';

class BellcommerceCheckoutScreen extends StatefulWidget {
  const BellcommerceCheckoutScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceCheckoutScreen> createState() =>
      _BellcommerceCheckoutScreenState();
}

class _BellcommerceCheckoutScreenState
    extends State<BellcommerceCheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.checkout,
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
          children: [
            Expanded(
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
            const SizedBox(height: Const.space25),
            CustomElevatedButton(
              onTap: () => Get.toNamed<dynamic>(
                BellcommerceRoutes.checkoutPayment,
              ),
              label: AppLocalizations.of(context)!.next,
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }
}
