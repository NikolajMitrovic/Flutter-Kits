part of '../profile_page.dart';

class FurneyEditProfileScreen extends StatefulWidget {
  const FurneyEditProfileScreen({Key? key}) : super(key: key);
  @override
  State<FurneyEditProfileScreen> createState() => _FurneyEditProfileScreenState();
}

class _FurneyEditProfileScreenState extends State<FurneyEditProfileScreen> {
  late TextEditingController _firstController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailAddressController;
  late TextEditingController _genderController;
  late TextEditingController _mobileNumberController;
  late int _selectedAddress = 0;

  @override
  void initState() {
    super.initState();
    _firstController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailAddressController = TextEditingController();
    _genderController = TextEditingController();
    _mobileNumberController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _firstController.dispose();
    _lastNameController.dispose();
    _emailAddressController.dispose();
    _genderController.dispose();
    _mobileNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.edit_profile,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              children: [
                _BuildChangePhotoProfile(),
                const SizedBox(height: Const.space25),
                AutoSizeText(
                  AppLocalizations.of(context)!.user_information,
                  style: theme.textTheme.displaySmall,
                ),
                const SizedBox(height: Const.space25),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            AppLocalizations.of(context)!.first_name,
                            style: theme.textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                          CustomTextFormField(
                            controller: _firstController,
                            borderType: BorderType.underline,
                            hintText:
                                AppLocalizations.of(context)!.enter_first_name,
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
                            AppLocalizations.of(context)!.last_name,
                            style: theme.textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                          CustomTextFormField(
                            controller: _lastNameController,
                            borderType: BorderType.underline,
                            hintText:
                                AppLocalizations.of(context)!.enter_last_name,
                            textFieldType: TextFieldType.alphabet,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Const.space15),
                AutoSizeText(
                  AppLocalizations.of(context)!.email_address,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 1,
                ),
                CustomTextFormField(
                  controller: _emailAddressController,
                  borderType: BorderType.underline,
                  hintText: AppLocalizations.of(context)!.enter_email_address,
                  textFieldType: TextFieldType.alphabet,
                ),
                const SizedBox(height: Const.space15),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            AppLocalizations.of(context)!.gender,
                            style: theme.textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                          CustomTextFormField(
                            controller: _genderController,
                            borderType: BorderType.underline,
                            hintText:
                                AppLocalizations.of(context)!.enter_gender,
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
                            AppLocalizations.of(context)!.mobile_number,
                            style: theme.textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                          CustomTextFormField(
                            controller: _mobileNumberController,
                            borderType: BorderType.underline,
                            hintText: AppLocalizations.of(context)!
                                .enter_mobile_number,
                            textFieldType: TextFieldType.phoneNumber,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Const.space25),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              Const.margin,
              Const.space8,
              Const.margin,
              Const.margin,
            ),
            child: CustomElevatedButton(
              onTap: () {
                Get.back<dynamic>();
                showToast(msg: AppLocalizations.of(context)!.profile_updated);
              },
              label: AppLocalizations.of(context)!.save,
            ),
          )
        ],
      ),
    );
  }
}
