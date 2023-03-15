part of '../address_add_page.dart';

class TreshopAddressAddScreen extends StatefulWidget {
  const TreshopAddressAddScreen({Key? key}) : super(key: key);

  @override
  State<TreshopAddressAddScreen> createState() => _TreshopAddressAddScreenState();
}

class _TreshopAddressAddScreenState extends State<TreshopAddressAddScreen> {
  late TextEditingController _nameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _addressController;
  String _selectedLocation = '';
  bool _isLoading = false;
  final List<String> _locationList = [
    'Office',
    'Home',
  ];

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
    _addressController = TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.add_address,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          CustomTextFormField(
            controller: _nameController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.full_name,
            prefixIcon: Icon(
              FeatherIcons.user,
              color: theme.primaryColor,
            ),
          ),
          const SizedBox(height: Const.space15),
          CustomTextFormField(
            controller: _phoneNumberController,
            borderType: BorderType.outline,
            textFieldType: TextFieldType.phoneNumber,
            hintText: AppLocalizations.of(context)!.phone_number,
            prefixIcon: Icon(
              FeatherIcons.phone,
              color: theme.primaryColor,
            ),
          ),
          const SizedBox(height: Const.space15),
          CustomTextFormField(
            controller: _addressController,
            borderType: BorderType.outline,
            hintText: AppLocalizations.of(context)!.address,
            prefixIcon: Icon(
              FeatherIcons.mapPin,
              color: theme.primaryColor,
            ),
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.choose_a_location,
            style: theme.textTheme.bodyMedium,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: _locationList.asMap().entries.map((e) {
                return SizedBox(
                  width: 110,
                  child: RadioListTile<String>(
                    value: e.value,
                    groupValue: _selectedLocation,
                    contentPadding: EdgeInsets.zero,
                    activeColor: theme.primaryColor,
                    selectedTileColor: theme.hintColor,
                    onChanged: (String? v) {
                      setState(() {
                        _selectedLocation = v!;
                      });
                    },
                    title: Text(
                      e.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                );
              }).toList()),
          const SizedBox(height: Const.space15),
          CustomElevatedButton(
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.back<dynamic>();
              });
            },
            label: AppLocalizations.of(context)!.save,
            isLoading: _isLoading,
          )
        ],
      ),
    );
  }
}
