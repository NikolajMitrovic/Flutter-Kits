part of '../profile_edit_page.dart';

class BellcommerceProfileEditScreen extends StatefulWidget {
  const BellcommerceProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<BellcommerceProfileEditScreen> createState() =>
      _BellcommerceProfileEditScreenState();
}

class _BellcommerceProfileEditScreenState
    extends State<BellcommerceProfileEditScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const _BuildProfilePhoto(),
          const SizedBox(height: Const.space25 * 2),
          CustomTextFormField(
            controller: _fullNameController,
            hintText: AppLocalizations.of(context)!.full_name,
            prefixIcon: const Icon(FeatherIcons.user),
          ),
          const SizedBox(height: Const.space15),
          CustomTextFormField(
            controller: _emailController,
            hintText: AppLocalizations.of(context)!.email_address,
            prefixIcon: const Icon(FeatherIcons.mail),
          ),
          const SizedBox(height: Const.space15),
          CustomTextFormField(
            controller: _phoneNumberController,
            hintText: AppLocalizations.of(context)!.phone_number,
            prefixIcon: const Icon(FeatherIcons.phone),
          ),
          const SizedBox(height: Const.space25 * 2),
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
                showToast(msg: AppLocalizations.of(context)!.profile_updated);
              });
            },
            isLoading: _isLoading,
            labelLoading: AppLocalizations.of(context)!.saving,
            label: AppLocalizations.of(context)!.save,
          )
        ],
      ),
    );
  }
}
