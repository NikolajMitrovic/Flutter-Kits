part of '../address_page.dart';

class TreshopAddressScreen extends StatefulWidget {
  const TreshopAddressScreen({Key? key}) : super(key: key);

  @override
  State<TreshopAddressScreen> createState() => _TreshopAddressScreenState();
}

class _TreshopAddressScreenState extends State<TreshopAddressScreen> {
  late TextEditingController _searchController;
  late List<AddressModel> _addressList = AddressList.addressList;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  void searchBook(String query) {
    final queries = AddressList.addressList.where((address) {
      final titleLower = address.address!.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      _addressList = queries;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.address,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: TextField(
              controller: _searchController,
              autocorrect: false,
              style: theme.textTheme.bodyMedium,
              onChanged: searchBook,
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.find_an_address,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Const.radius),
                  borderSide: BorderSide(color: theme.primaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Const.radius),
                  borderSide: BorderSide(color: theme.primaryColor),
                ),
                prefixIcon: Icon(Icons.search, color: theme.primaryColor),
                contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _addressList.length,
              padding: const EdgeInsets.all(Const.margin),
              itemBuilder: (context, index) {
                final address = _addressList[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: Const.space12),
                  padding: const EdgeInsets.all(Const.space8),
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(Const.radius),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: theme.primaryColor,
                                width: 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              (address.location == 'Home')
                                  ? CustomIcon.house
                                  : CustomIcon.office,
                              width: 17,
                              height: 17,
                            ),
                          ),
                          const SizedBox(width: Const.space12),
                          Text(
                            address.location ?? '',
                            style: theme.textTheme.displaySmall,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: ()=> _onModalBottomSheetTap(context),
                            icon: const Icon(FeatherIcons.moreVertical),
                            color: theme.primaryColor,
                          )
                        ],
                      ),
                      const SizedBox(height: Const.space12),
                      _BuildListTile(
                        icon: Icons.location_on,
                        value: address.address ?? '',
                      ),
                      const SizedBox(height: Const.space5),
                      _BuildListTile(
                        icon: Icons.phone,
                        value: address.phoneNumber.toString(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor : theme.primaryColor,
        onPressed: () =>Get.toNamed<dynamic>(TreshopRoutes.addressAdd),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
