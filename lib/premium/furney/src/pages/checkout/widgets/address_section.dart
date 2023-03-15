part of '../checkout_page.dart';

class _AddressSection extends StatefulWidget {
  const _AddressSection({
    Key? key,
  }) : super(key: key);

  @override
  State<_AddressSection> createState() => __AddressSectionState();
}

class __AddressSectionState extends State<_AddressSection> {
  int _selectedAddress = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        children: [
          _BuildTitleAddress(),
          const SizedBox(height: Const.space15),
          ListView.builder(
            itemCount: AddressList.addressList.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
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
                    height: 80,
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
                                    data.city! + data.zipCode.toString(),
                                    style: theme.textTheme.titleSmall),
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
          )
        ],
      ),
    );
  }
}

class _BuildTitleAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          AppLocalizations.of(context)!.address,
          style: theme.textTheme.displaySmall,
        ),
        InkWell(
          onTap: () => Get.toNamed<dynamic>(FurneyRoutes.addAddress),
          highlightColor: theme.hintColor,
          child: AutoSizeText(
            AppLocalizations.of(context)!.new_address.toUpperCase(),
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
