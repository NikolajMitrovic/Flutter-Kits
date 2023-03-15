part of '../address_edit_page.dart';

class BellcommerceAddressEditScreen extends StatefulWidget {
  const BellcommerceAddressEditScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceAddressEditScreen> createState() => _BellcommerceAddressEditScreenState();
}

class _BellcommerceAddressEditScreenState extends State<BellcommerceAddressEditScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _addressController;
  bool _isLoading = false;

  late AddressModel _address;

  @override
  void initState() {
    super.initState();
    _address = Get.arguments as AddressModel;

    _fullNameController = TextEditingController(text: _address.fullName);
    _phoneNumberController = TextEditingController(text: _address.phoneNumber);
    _addressController = TextEditingController(text: _address.streetAddress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.edit_address,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              shrinkWrap: true,
              children: [
                CustomTextFormField(
                  controller: _fullNameController,
                  hintText: AppLocalizations.of(context)!.full_name,
                  prefixIcon: const Icon(FeatherIcons.user),
                ),
                const SizedBox(height: Const.space15),
                CustomTextFormField(
                  controller: _phoneNumberController,
                  hintText: AppLocalizations.of(context)!.phone_number,
                  keyboardType: TextInputType.number,
                  prefixIcon: const Icon(FeatherIcons.phone),
                ),
                const SizedBox(height: Const.space15),
                CustomTextFormField(
                  controller: _addressController,
                  hintText: AppLocalizations.of(context)!.address,
                  prefixIcon: const Icon(FeatherIcons.mapPin),
                ),
                const SizedBox(height: Const.space25),
              ],
            ),
          ),
          CustomElevatedButton(
            onTap: () {
              setState(() {
                _isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  _isLoading = false;
                });
                Get.back<dynamic>();
              });
            },
            isLoading: _isLoading,
            label: AppLocalizations.of(context)!.save,
            labelLoading: AppLocalizations.of(context)!.saving,
            margin: const EdgeInsets.all(Const.margin),
          )
        ],
      ),
    );
  }
}
