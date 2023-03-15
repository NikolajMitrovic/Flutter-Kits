part of '../address_page.dart';

class AddressArgument {
  final bool isFromCheckout;
  final OrderModel? order;

  AddressArgument({this.isFromCheckout = false, this.order});
}

class BelilaAddressScreen extends StatefulWidget {
  const BelilaAddressScreen({Key? key}) : super(key: key);

  @override
  State<BelilaAddressScreen> createState() => _BelilaAddressScreenState();
}

class _BelilaAddressScreenState extends State<BelilaAddressScreen>
    with AutomaticKeepAliveClientMixin {
  AddressArgument? _args;
  @override
  void initState() {
    super.initState();
    _args = Get.arguments as AddressArgument;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async {
        if (_args?.isFromCheckout == true && _args != null) {
          Get.back<dynamic>();
        } else {
          Get.back<dynamic>();
        }
        return true;
      },
      child: RefreshIndicator(
        onRefresh: () async {},
        child: Scaffold(
          appBar: CustomAppBar(
            context,
            title: AppLocalizations.of(context)!.address,
            leadingOntap: () {
              if (_args?.isFromCheckout == true && _args != null) {
                Get.back<dynamic>();
              } else {
                Get.back<dynamic>();
              }
            },
          ),
          body: ListView.builder(
            itemCount: addressList.length,
            // ignore: lines_longer_than_80_chars
            padding: const EdgeInsets.symmetric(
              horizontal: Const.margin,
            ),
            itemBuilder: (context, index) {
              final address = addressList[index];

              return AddressCard(address: address);
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Get.toNamed<dynamic>(BelilaRoutes.addressAdd),
            backgroundColor : theme.primaryColor,
            child: const Icon(
              FeatherIcons.plus,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
