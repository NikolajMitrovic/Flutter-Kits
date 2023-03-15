part of '../account_page.dart';

class LestateAccountScreen extends StatefulWidget {
  const LestateAccountScreen({Key? key}) : super(key: key);

  @override
  State<LestateAccountScreen> createState() => _LestateAccountScreenState();
}

class _LestateAccountScreenState extends State<LestateAccountScreen> {
  late TextEditingController _fullNameController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _emailController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController(text: '');
    _phoneNumberController = TextEditingController(text: '');
    _emailController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.account,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        children: [
          const _BuildPhotoProfile(),
          Text(
            AppLocalizations.of(context)!.full_name,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _fullNameController,
            hintText: AppLocalizations.of(context)!.enter_your_full_name,
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.phone_number,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _phoneNumberController,
            hintText: AppLocalizations.of(context)!.enter_your_phone_number,
            textInputType: TextInputType.phone,
          ),
          const SizedBox(height: Const.space15),
          Text(
            AppLocalizations.of(context)!.email,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: Const.space8),
          CustomTextFormField(
            controller: _emailController,
            hintText: AppLocalizations.of(context)!.enter_your_email_address,
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: Const.space25),
          CustomElevatedButton(
            onTap: () {
              setState(() => _isLoading = true);
              Future.delayed(const Duration(seconds: 2), () {
                setState(() => _isLoading = false);
                Get.back<dynamic>();
                showToast(msg: AppLocalizations.of(context)!.profile_updated);
              });
            },
            label: AppLocalizations.of(context)!.save,
            labelLoading: AppLocalizations.of(context)!.saving,
            isLoading: _isLoading,
          ),
          const SizedBox(height: Const.space25),
        ],
      ),
    );
  }
}
