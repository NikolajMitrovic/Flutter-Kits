part of '../address_add_page.dart';

class BellcommerceAddressAddScreen extends StatefulWidget {
  const BellcommerceAddressAddScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceAddressAddScreen> createState() =>
      _BellcommerceAddressAddScreenState();
}

class _BellcommerceAddressAddScreenState
    extends State<BellcommerceAddressAddScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _addressController;
  bool _isLoading = false;
  
  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
    _addressController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.add_address,
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
