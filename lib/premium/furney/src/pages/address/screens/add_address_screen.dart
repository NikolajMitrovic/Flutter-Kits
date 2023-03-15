part of '../address_page.dart';

class FurneyAddAddressScreen extends StatefulWidget {
  const FurneyAddAddressScreen({Key? key}) : super(key: key);
  @override
  State<FurneyAddAddressScreen> createState() => _FurneyAddAddressScreenState();
}

class _FurneyAddAddressScreenState extends State<FurneyAddAddressScreen> {
  TextEditingController? _fullNameController;
  TextEditingController? _mobileNumberController;
  TextEditingController? _cityController;
  TextEditingController? _zipCodeController;
  TextEditingController? _addressController;
  int? _selectedPlace = 0;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _mobileNumberController = TextEditingController();
    _cityController = TextEditingController();
    _zipCodeController = TextEditingController();
    _addressController = TextEditingController();
  }

  @override
  void dispose() {
    _fullNameController?.dispose();
    _mobileNumberController?.dispose();
    _cityController?.dispose();
    _zipCodeController?.dispose();
    _addressController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.new_address,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.email_address,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
          CustomTextFormField(
            controller: _fullNameController,
            borderType: BorderType.underline,
            hintText: AppLocalizations.of(context)!.enter_full_name,
            textFieldType: TextFieldType.alphabet,
          ),
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.mobile_number,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
          CustomTextFormField(
            controller: _mobileNumberController,
            borderType: BorderType.underline,
            hintText: AppLocalizations.of(context)!.enter_mobile_number,
            textFieldType: TextFieldType.phoneNumber,
          ),
          const SizedBox(height: Const.space15),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.city,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                    ),
                    CustomTextFormField(
                      controller: _cityController,
                      borderType: BorderType.underline,
                      hintText: AppLocalizations.of(context)!.enter_city_name,
                      textFieldType: TextFieldType.alphabet,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: Const.space25),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      AppLocalizations.of(context)!.zip_code,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                    ),
                    CustomTextFormField(
                      controller: _zipCodeController,
                      borderType: BorderType.underline,
                      hintText: AppLocalizations.of(context)!.enter_zip_code,
                      textFieldType: TextFieldType.number,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: Const.space15),
          AutoSizeText(
            AppLocalizations.of(context)!.address,
            style: theme.textTheme.bodyMedium,
            maxLines: 1,
          ),
          CustomTextFormField(
            controller: _addressController,
            borderType: BorderType.underline,
            hintText: AppLocalizations.of(context)!.enter_address,
          ),
          const SizedBox(height: Const.space15),
          Column(
              children: ['house', 'company'].asMap().entries.map((e) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                setState(() {
                  _selectedPlace = e.key;
                });
              },
              leading: Radio(
                value: e.key,
                groupValue: _selectedPlace,
                activeColor: theme.primaryColor,
                onChanged: (v) => setState(
                  () => _selectedPlace = e.key,
                ),
              ),
              title: AutoSizeText(e.value, style: theme.textTheme.headlineMedium),
            );
          }).toList()),
          const SizedBox(height: Const.space15),
          CustomElevatedButton(
            onTap: (){
              Get.back<dynamic>();
              showToast(msg: AppLocalizations.of(context)!.address_added);
            },
            label: AppLocalizations.of(context)!.save,
          ),
        ],
      ),
    );
  }
}
