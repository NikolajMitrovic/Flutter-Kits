part of '../address_page.dart';

class FurneyAddressScreen extends StatefulWidget {
  const FurneyAddressScreen({Key? key}) : super(key: key);
  @override
  State<FurneyAddressScreen> createState() => _FurneyAddressScreenState();
}

class _FurneyAddressScreenState extends State<FurneyAddressScreen> {
  int? _selectedAddress;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.address,
      ),
      body: ListView.builder(
        itemCount: AddressList.addressList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final data = AddressList.addressList[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: Const.space15),
            child: InkWell(
              borderRadius: BorderRadius.circular(Const.radius),
              onTap: () {
                setState(() {
                  _selectedAddress = index;
                });
              },
              child: Container(
                width: Screens.width(context),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Const.radius),
                  color: theme.cardColor,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Const.space12,
                          vertical: Const.space8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(data.fullName!,
                                style: theme.textTheme.headlineMedium),
                            const Spacer(),
                            AutoSizeText(data.address!,
                                style: theme.textTheme.titleSmall),
                            AutoSizeText(
                                '${data.city!} ${data.zipCode}',
                                style: theme.textTheme.titleSmall),
                            const Spacer(),
                            AutoSizeText(data.phoneNumber.toString(),
                                style: theme.textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ),
                    Radio(
                      value: index,
                      groupValue: _selectedAddress,
                      activeColor: theme.primaryColor,
                      onChanged: (v) {
                        setState(() {
                          _selectedAddress = index;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
